# frozen_string_literal: true

class CreateEntryMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :entry_maps do |t|
      t.string :field_api_id, null: false
      t.string :model_as_string, null: false
      t.string :attribute_as_string, null: false
      t.boolean :has_options, default: false
      # use case: ceremony.primary_spouse vs. ceremony.secondary_spouse
      # use case: add to array, not override value
      t.jsonb :complexity, default: {}, null: false
    end
  end
end
