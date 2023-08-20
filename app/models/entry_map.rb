# frozen_string_literal: true

class EntryMap < ApplicationRecord
  # https://github.com/madeintandem/jsonb_accessor
  jsonb_accessor :complexity,
    relationship_name: :string,
    add_to_array: [:boolean, default: false],
    add_to_json: [:boolean, default: false]
end
