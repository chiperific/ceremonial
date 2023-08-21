# frozen_string_literal: true

class Section < ApplicationRecord
  belongs_to :default_previous_section, class_name: 'Section', optional: true

  has_many :default_elements, class_name: 'Element', foreign_key: 'default_section_id'

  validates :name, presence: true, uniqueness: true

  scope :only_defaults, -> { where(is_default: true) }
  scope :with_religious_preference, ->(is_religious) { where(is_religious: is_religious) }
  scope :first_section, -> { find_by(default_previous_section_id: nil) }

  def next_section
    self.class.find_by(default_previous_section_id: id)
  end
end
