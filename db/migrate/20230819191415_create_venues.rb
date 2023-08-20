# frozen_string_literal: true

class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :street_address
      t.string :address_line_2
      t.string :city
      t.string :state, default: "Michigan"
      t.string :zip
      t.string :phone_number
      t.string :url
      t.string :email
      t.string :contact_name
      t.string :city_or_county
      t.timestamps
    end
  end
end
