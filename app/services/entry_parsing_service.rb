# frozen_string_literal: true

class EntryParsingService
  attr_reader :email_subject, :entry_number, :form_name, :entry

  def self.parse!(email_subject)
    new(email_subject).call
  end

  def initialize(email_subject)
    # { "Ceremony": <Ceremony>}
    @in_memory_records = {}
    @email_subject = email_subject
  end

  def call
    get_entry
    generate_records_from_entry if @entry.present?
  end

  private

  def get_entry
    @entry_number = @email_subject.match(/\[#(\d+)\]/)[1]
    @form_name = @email_subject.gsub("Fwd: ", "").split(" ")[0...-1].join(" ")
    @form = Form.find_by(name: @form_name)
    if @form.nil?
      Form.from_wufoo
      @form = Form.find_by(name: @form_name)
    end

    @entry = @form.get_entry(@entry_number)
  end

  def generate_records_from_entry
    @entry.except("EntryId", "DateCreated", "CreatedBy", "DateUpdated", "UpdatedBy").with_indifferent_access.each do |(entry_key, entry_value)|
      puts entry_value
      # next if entry_value.blank?

      # should only be one entry map per field_api_id, but using where as there's no constraint
      EntryMap.where(field_api_id: entry_key).each do |entry_map|
        klass = entry_map.model_as_string.constantize
        kattribute = entry_map.attribute_as_string.to_sym


        # Ceremony
        # Spouse:primary_spouse
        in_memory_record_name = entry_map.model_as_string
        in_memory_record_name += ":#{entry_map.relationship_name}" if entry_map.relationship_name.present?

        if @in_memory_records[in_memory_record_name].present?
          krecord = @in_memory_records[in_memory_record_name]
        else
          krecord = klass.find_or_initialize_by({kattribute => entry_value})
          @in_memory_records[in_memory_record_name] = krecord

          # don't need set the attribute, it was just done in the find_or_initialize_by
          next
        end

        # elsif entry_map.add_to_json # jsonb_accessor handles this case
        if entry_map.add_to_array
          debugger
          krecord.send("#{kattribute}<<", entry_value)
        else
          krecord.send("#{kattribute}=", entry_value)
        end
      end
    end

    debugger
  end
end
