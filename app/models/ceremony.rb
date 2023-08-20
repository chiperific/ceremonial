# frozen_string_literal: true

class Ceremony < ApplicationRecord

  belongs_to :primary_spouse, class_name: "Spouse"
  belongs_to :secondary_spouse, class_name: "Spouse"

  belongs_to :venue
  belongs_to :rehearsal_venue, class_name: "Venue"

  # other_services is an array of strings
  # https://guides.rubyonrails.org/active_record_postgresql.html#array

  before_save :set_datetime

  private

  def set_datetime
    # date and time are just strings
    self.date_time = "#{date} #{time}".to_datetime
  end
end
