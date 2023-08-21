class Element < ApplicationRecord
  belongs_to :default_section, class_name: 'Section', optional: true
  belongs_to :default_previous_element, class_name: 'Element', optional: true

  # name must match the Entry value for lookups
  # e.g. {"Form718" => "Greeting #1"}
  validates_presence_of :name, :text, :field_api_id, :field_response,

  scope :only_defaults, -> { where(is_default: true) }
  scope :with_religious_preference, ->(is_religious) { where(is_religious: is_religious) }
  scope :first_element, -> { find_by(default_previous_element_id: nil) }

  def next_element
    self.class.find_by(default_previous_element_id: id)
  end
end
