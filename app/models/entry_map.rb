# frozen_string_literal: true

# EntryMap creates a mapping between a Wufoo form field and a model attribute.
# e.g. {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field9", model_as_string: "Spouse", attribute_as_string: "forename", related_model: "Ceremony", relationship_name: "primary_spouse"}

# EntryParsingService uses these mappings to create the records from the Wufoo entry values.
# e.g. ["Field9", "Mackenzie"]

class EntryMap < ApplicationRecord
  # https://github.com/madeintandem/jsonb_accessor

  # complexity holds attributes that are not a 1:1 mapping between the form field and the model attribute
  # but might require a different record to be created.
  # E.g. "Field9" is Spouse#forename for the Ceremony#primary_spouse record
  #   and "Field815" is Spouse#forename for the Ceremony#secondary_spouse record
  jsonb_accessor :complexity,
    relationship_name: :string,
    related_model: :string,
    add_to_array: [:boolean, default: false],
    add_to_text: [:boolean, default: false]

  validates_uniqueness_of :field_api_id, scope: :model_as_string
end
