# frozen_string_literal: true

class CreateOptionMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :option_maps do |t|
      t.string :field_api_id, null: false
      t.string :entry_text, null: false
      t.text :option_text, null: false
      t.boolean :has_nonreligous_variant, default: false
      t.text :nonreligous_variant
    end
  end
end
