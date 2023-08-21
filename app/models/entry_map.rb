# frozen_string_literal: true

class EntryMap < ApplicationRecord
  # https://github.com/madeintandem/jsonb_accessor
  jsonb_accessor :complexity,
    relationship_name: :string,
    related_model: :string,
    add_to_array: [:boolean, default: false]

  validates_uniqueness_of :field_api_id, scope: :model_as_string
end
