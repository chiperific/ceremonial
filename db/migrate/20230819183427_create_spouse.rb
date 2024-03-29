# frozen_string_literal: true

class CreateSpouse < ActiveRecord::Migration[7.0]
  def up
    create_table :spouses do |t|
      t.string :forename
      t.string :surname
      t.string :full_name
      t.string :preferred_name
      t.string :email
      t.string :phone_number
      t.integer :gender, default: 0
      t.string :nomitive
      t.string :posessive
      t.string :declarative
      t.string :pre_declarative
      t.string :witness_name
      t.string :spiritual_statement
      t.integer :spiritual_level
      t.jsonb :document, default: {}
      t.timestamps
    end
  end
end
