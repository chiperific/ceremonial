# frozen_string_literal: true

# Element represents a single option for a Section
# field_api_id and field_response provide the map to determine if the element should be used
# e.g. field_api_id: "Field718", field_response: "Greeting #1"
# field_response is a string or an array of strings (meaning any matchshould trigger the element to be used)
# text is rich-text and can include Interpolation, e.g. #PRESENCE_OF_GOD# or "FIRST_NAME_2"

class Element < ApplicationRecord
  belongs_to :default_section, class_name: 'Section', optional: true
  belongs_to :default_previous_element, class_name: 'Element', optional: true

  # name must match the Entry value for lookups
  # e.g. {"Form718" => "Greeting #1"}
  validates_presence_of :name, :text, :field_api_id, :field_response

  scope :only_defaults, -> { where(is_default: true) }
  scope :with_religious_preference, ->(is_religious) { where(is_religious: is_religious) }
  scope :first_element, -> { find_by(default_previous_element_id: nil) }

  # can be more than one (e.g. prayer intro is followed by prayer text, then prayer closing)
  # (e.g. vows intro is followed by secondary_spouse vows, then primary_spouse vows)
  def next_elements
    self.class.find(default_previous_element_id: id)
  end
end
