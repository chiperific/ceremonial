# frozen_string_literal: true

class Venue < ApplicationRecord
  has_many :ceremonies
end
