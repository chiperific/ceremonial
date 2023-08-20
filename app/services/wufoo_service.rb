# frozen_string_literal: true

require "base64"

class WufooService
  include HTTParty
  base_uri "https://mywestmichiganwedding.wufoo.com/api/v3"

  attr_accessor :response

  def initialize
    @response = nil
    self.class.headers auth
  end

  def get_forms
    @response = self.class.get("/forms.json")
  end

  def get_form(hash_url)
    @response = self.class.get("/forms/#{hash_url}.json")
  end

  def get_form_fields(fields_link)
    @response = self.class.get(fields_link)
  end

  def get_form_comments(hash_url)
    @response = self.class.get("/forms/#{hash_url}/comments.json")
  end

  def get_entry(entry_number, entries_link)
    filter = "?Filter1=EntryId+Is_equal_to+#{entry_number}"
    @response = self.class.get(entries_link + filter)
  end

  def get_form_entries(entries_link)
    @response = self.class.get(entries_link)
  end

  def auth
    username = Rails.application.credentials.wufoo[:username]
    password = Rails.application.credentials.wufoo[:password]
    auth = Base64.encode64("#{username}:#{password}")
    {Authorization: "Basic #{auth}"}
  end
end
