class CreateInterpolationMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :interpolation_maps do |t|
      t.string :keyword, null: false
      t.string :model_as_string, null: false
      t.string :attribute_as_string, null: false
    end
  end
end
