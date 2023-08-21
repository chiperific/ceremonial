class CreateCeremonyOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :ceremony_orders do |t|
      t.references :ceremony, foreign_key: true
      t.references :section, foreign_key: true
      t.references :previous_section, foreign_key: {to_table: :sections}
      t.references :element, foreign_key: true
      t.references :previous_element, foreign_key: {to_table: :elements}
    end
  end
end
