class Field < ApplicationRecord
  belongs_to :form

  def self.from_wufoo(form)
    response = form.list_fields
    response.each do |field|
      # weird that they first send a field with ID "EntryId" and then send the real fields
      next if field["ID"] == "EntryId"
      Field.find_or_create_by(api_id: field["ID"]).tap do |f|
        f.title = field["Title"]
        f.instructions = field["Instructions"]
        f.default_val = field["DefaultVal"]
        f.api_type = field["Type"]
        f.form = form
        f.save!
      end
    end
  end
end
