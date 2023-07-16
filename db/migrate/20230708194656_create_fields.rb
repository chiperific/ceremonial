class CreateFields < ActiveRecord::Migration[7.0]
  def change
    create_table :fields do |t|
      t.string :api_id, null: false
      t.string :title
      t.string :instructions
      t.string :default_val
      t.string :api_type
      t.references :form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
