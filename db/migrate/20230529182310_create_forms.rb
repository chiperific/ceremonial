# frozen_string_literal: true

class CreateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :hash_url
      t.string :name_url
      t.string :fields_link
      t.string :entries_link
      t.timestamps
    end
  end
end
