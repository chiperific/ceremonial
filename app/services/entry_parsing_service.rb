# frozen_string_literal: true

# EntryParsingService.parse!("Fwd: Basic Information Form [#1807]")
# EntryParsingService.parse!("Fwd: Wedding Rehearsal Planning Form (v2) [#464]")

class EntryParsingService
  attr_reader :email_subject, :entry_number, :form_name, :entry

  def self.parse!(email_subject)
    new(email_subject).call
  end

  def initialize(email_subject)
    # Holds related records in memory for later access. E.g. when getting both spouse's information from the Basic Information Form,
    # Two records need to be created as either the primary or secondary spouse, determined by the field_api_id.
    # { "Ceremony": <Ceremony>}
    @in_memory_records = {}
    @joins = {}
    @email_subject = email_subject
  end

  def call
    get_entry
    generate_records_from_entry if @entry.present?
    join_related_records
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

    # Gets the entry from Wufuoo as a hash, e.g.: { "Field816"=>"Smith"}
    @entry = @form.get_entry(@entry_number)
  end

  def generate_records_from_entry
    @entry.except("EntryId", "DateCreated", "CreatedBy", "DateUpdated",
      "UpdatedBy").with_indifferent_access.each do |(entry_key, entry_value)|
      next if entry_value.blank?

      # should only be one entry map per field_api_id, but using `where().each` as there's no constraint
      EntryMap.where(form_hash_url: @form.hash_url, field_api_id: entry_key).each do |entry_map|
        klass = entry_map.model_as_string.constantize
        kattribute = entry_map.attribute_as_string.to_sym

        in_memory_record_name = entry_map.model_as_string # e.g. Ceremony
        if entry_map.relationship_name.present?
          in_memory_record_name += ":#{entry_map.relationship_name}"  # e.g. Spouse:primary_spouse
          @joins[in_memory_record_name] = entry_map.related_model
        end

        if @in_memory_records[in_memory_record_name].present?
          krecord = @in_memory_records[in_memory_record_name]
        else
          # TODO: if I have 2 ceremonies on the same date, this will break
          # or two spouses with the same name
          krecord = klass.find_or_initialize_by({kattribute => entry_value})
          @in_memory_records[in_memory_record_name] = krecord

          # don't need set the attribute, it was just done in the find_or_initialize_by
          next
        end

        # elsif entry_map.add_to_json # jsonb_accessor handles this case
        if entry_map.add_to_array
          current_array = krecord.send(kattribute)
          current_array << entry_value
          krecord.send("#{kattribute}=", current_array)
        else
          krecord.send("#{kattribute}=", entry_value)
        end
      end
    end

    @in_memory_records.each do |(in_memory_record_name, in_memory_record)|
      in_memory_record.save!
      @in_memory_records[in_memory_record_name] = in_memory_record.reload.id
    end

    puts @in_memory_records
  end

  def join_related_records
    @joins.each do |(in_memory_record_name, related_model)|
      # relies on the related_record holding the foreign key to the in_memory_record
      related_record = related_model.constantize.find(@in_memory_records[related_model])

      relationship_name = in_memory_record_name.split(":")[1]

      related_record.send("#{relationship_name}_id=", @in_memory_records[in_memory_record_name])
      related_record.save
    end

    puts @joins
  end
end
