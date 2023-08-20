# frozen_string_literal: true

class CreateCeremonies < ActiveRecord::Migration[7.0]
  def change
    create_table :ceremonies do |t|
      t.string :date
      t.string :time
      t.datetime :date_time
      t.string :rehearsal_requested
      t.string :planner_or_coordinator
      t.string :other_services, array: true, default: []
      t.references :venue, foreign_key: true
      t.references :primary_spouse, foreign_key: { to_table: :spouses }
      t.references :secondary_spouse, foreign_key: { to_table: :spouses }
      t.boolean :has_rehearsal, default: false
      t.date :rehearsal_date
      t.datetime :rehearsal_date_time
      t.references :rehearsal_venue, foreign_key: { to_table: :venues }
      t.boolean :is_religious, default: true
      t.jsonb :document, default: {}
      t.timestamps
    end
  end
end
