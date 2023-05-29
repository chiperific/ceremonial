class Form < ApplicationRecord
  def self.ceremony_form
    find_by(hash_url: "z13fw81l0rp9wff")
  end

  def self.from_wufoo
    response = WufooService.new.get_forms
    response["Forms"].each do |form|
      Form.find_or_create_by(hash_url: form["Hash"]).tap do |f|
        f.name = form["Name"]
        f.name_url = form["Url"]
        f.fields_link = form["LinkFields"]
        f.entries_link = form["LinkEntries"]
        f.save!
      end
    end
  end

  def list_fields
    response = WufooService.new.get_form_fields(fields_link)
    response["Fields"]
  end

  def list_entries
    response = WufooService.new.get_form_entries(entries_link)
    response["Entries"]
  end
end
