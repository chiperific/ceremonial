class CreateInterpolationMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :interpolation_maps do |t|
      t.string :keyword, null: false
      t.string :method_chain, array: true, default: []
    end
  end
end
