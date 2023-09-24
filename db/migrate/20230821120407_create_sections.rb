class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :form_hash_url
      t.string :field_api_id
      t.string :field_response
      t.boolean :is_default, default: false
      t.boolean :is_religious, default: false
      t.references :default_previous_section, foreign_key: {to_table: :sections}
    end
  end
end
