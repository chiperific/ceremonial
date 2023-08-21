class CreateElements < ActiveRecord::Migration[7.0]
  def change
    create_table :elements do |t|
      t.string :name
      t.text :text
      t.string :form_hash_url, null: false
      t.string :field_api_id, null: false
      t.string :field_response, null: false
      t.string :is_default, default: false
      t.string :is_religious, default: false
      t.references :default_previous_element, foreign_key: {to_table: :elements}
      t.references :default_section, foreign_key: {to_table: :sections}
    end
  end
end
