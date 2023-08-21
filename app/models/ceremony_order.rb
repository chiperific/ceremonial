class CeremonyOrder < ApplicationRecord
  belongs_to :ceremony
  belongs_to :section
  belongs_to :previous_section, class_name: 'Section', optional: true
  belongs_to :element, optional: true
  belongs_to :previous_element, class_name: 'Element', optional: true
end
