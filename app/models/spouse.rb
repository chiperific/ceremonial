# frozen_string_literal: true

class Spouse < ApplicationRecord
  enum gender: [:unknown, :female, :male, :nonbinary]

  has_one :ceremony
end
