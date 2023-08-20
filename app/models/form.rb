# frozen_string_literal: true

class Form < ApplicationRecord
  has_many :fields, dependent: :destroy

  def self.ceremony_form
    find_by(hash_url: "z13fw81l0rp9wff")
  end

  def self.information_form
    find_by(hash_url: "z1qnut4c18w3k9d")
  end

  def self.contact_form
    find_by(hash_url: "zku2tog06wh8yf")
  end

  def self.rehearsal_form
    find_by(hash_url: "m1xvqmb90hxcs09")
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

  # email_subject e.g. "Basic Information Form [#1807]"
  def self.lookup_entry(email_subject)
    entry_number = email_subject.match(/\[#(\d+)\]/)[1]
    form_name = email_subject.gsub("Fwd: ", "").split(" ")[0...-1].join(" ")
    form = find_by(name: form_name)

    form.get_entry(entry_number)
  end

  def list_fields
    response = WufooService.new.get_form_fields(fields_link)
    response["Fields"]
  end

  def api_version
    WufooService.new.get_form(hash_url)
  end

  def get_fields_from_wufoo
    Field.from_wufoo(self)
  end

  def list_comments
    response = WufooService.new.get_form_comments(hash_url)
  end

  def list_entries
    response = WufooService.new.get_form_entries(entries_link)
    response["Entries"]
  end

  def get_entry(entry_number)
    response = WufooService.new.get_entry(entry_number, entries_link)
    response["Entries"].first
  end
end
