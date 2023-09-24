# frozen_string_literal: true

class Ceremony < ApplicationRecord
  belongs_to :primary_spouse, class_name: "Spouse", optional: true
  belongs_to :secondary_spouse, class_name: "Spouse", optional: true

  belongs_to :venue, optional: true
  belongs_to :rehearsal_venue, class_name: "Venue", optional: true
  has_many :ceremony_orders

  jsonb_accessor :document,
    # for the rehearsal planning form
    comments_or_questions: :string,
    planner_first_name: :string,
    planner_last_name: :string,
    planner_phone_number: :string,
    planner_email: :string,
    primary_spouse_attendants: :text,
    secondary_spouse_attendants: :text,
    other_processional_attendants: :text,
    animal_attendants: :text,
    holding_wedding_rings: :string,
    ushers: :text,
    ancestors_seating: [:string, array: true, default: []],
    processional_songs: [:string, array: true, default: []],
    guest_dismissal: [:string, array: true, default: []],
    reception_start_time: :string,
    rehearsal_dinner_start_time: :string,
    photography: :string
    # for the wedding ceremony planning form
    remembrance_names: :text,
    other_ceremony_participants: :text,
    child_participants: :text,
    number_of_attendants: :string,
    number_of_child_attendants: :string,
    child_attendants_notes: :text,
    presentation_title: :string, # e.g. "Mr. and Mrs. Smith"
    pre_reception_food: :string,
    pre_reception_instructions: :string # e.g. "In the meantime, please "

  # other_services as an array of strings
  # https://guides.rubyonrails.org/active_record_postgresql.html#array

  before_save :set_datetime

  before_save :set_religious

  def create_default(is_religious: true)
    sections = Section.only_defaults.with_religious_preference(is_religious)

    section = sections.first_section
    previous_section = nil
    elements = section.default_elements

    while section
      element = elements.first_element
      previous_element = nil

      while element
        ceremony_orders.create(section: section, previous_section: previous_section, element: element, previous_element: previous_element)

        previous_element = element
        element = element.next_element
      end

      previous_section = section
      section = section.next_section
    end

  end

  # Instance methods for InterpolationMap:
  def presence_of_god_text
    if is_religious?
      " in the presence of God,"
    else
      ""
    end
  end

  def and_presence_of_god_text
    " and #{presence_of_god_text}"
  end

  def before_god_text
    "before God,"
  end

  def spouse_forenames
    "#{secondary_spouse.forename} and #{primary_spouse.forename}"
  end

  def spouse_forenames_shuffled
    [primary_spouse.forename, secondary_spouse.forename].shuffle.to_sentence
  end

  def followed_by_prayer_text
    if is_religious?
      " followed by prayer"
    end
  end

  private

  def set_datetime
    # date and time are just strings
    self.date_time = "#{date} #{time}".to_datetime
    self.rehearsal_date_time = "#{rehearsal_date} #{rehearsal_time}".to_datetime
  end

  def set_religious
    spouse_spiritual_array = [primary_spouse.spiritual_level, secondary_spouse.spiritual_level]

    # default is_religious is true, and only set it if the spouses have their spiritual_levels set
    return if spouse_spiritual_array.compact.empty?

    # Use fibbonacci sequence because we sum the primary_ and secondary_ spouse's
    # spiritual_levels and want granularity for these conditions:
    #   primary_spouse is 5,  secondary_spouse is 5 (10) => is_religious is false
    #   primary_spouse is 13, secondary_spouse is 0 (13) => is_religious is false
    #   primary_spouse is 13, secondary_spouse is 3 (16) => is_religious is true
    #   primary_spouse is 8,  secondary_spouse is 8 (16) => is_religious is true
    self.is_religious = spouse_spiritual_array.compact.sum > 14
  end
end
