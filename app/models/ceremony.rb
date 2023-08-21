# frozen_string_literal: true

class Ceremony < ApplicationRecord
  belongs_to :primary_spouse, class_name: "Spouse", optional: true
  belongs_to :secondary_spouse, class_name: "Spouse", optional: true

  belongs_to :venue, optional: true
  belongs_to :rehearsal_venue, class_name: "Venue", optional: true
  has_many :ceremony_orders

  # most of these are for the rehearsal planning form
  jsonb_accessor :document,
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

  # other_services is an array of strings
  # https://guides.rubyonrails.org/active_record_postgresql.html#array

  before_save :set_datetime

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

  private

  def set_datetime
    # date and time are just strings
    self.date_time = "#{date} #{time}".to_datetime
    self.rehearsal_date_time = "#{rehearsal_date} #{rehearsal_time}".to_datetime
  end
end
