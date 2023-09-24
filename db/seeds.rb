# frozen_string_literal: true

# EntryMap creates a mapping between a form field and a model attribute.
# {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field9", model_as_string: "Spouse", attribute_as_string: "forename", related_model: "Ceremony", relationship_name: "primary_spouse"}

# EntryParsingService.parse! takes an email subject line to capture the form name and entry number.

# Basic Information Form:
# https://mywestmichiganwedding.wufoo.com/api/code/12
EntryMap.create([
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field9", model_as_string: "Spouse",
   attribute_as_string: "forename", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field10", model_as_string: "Spouse",
   attribute_as_string: "surname", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field815", model_as_string: "Spouse",
   attribute_as_string: "forename", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field816", model_as_string: "Spouse",
   attribute_as_string: "surname", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field829", model_as_string: "Spouse", attribute_as_string: "email",
   related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field328", model_as_string: "Spouse",
   attribute_as_string: "phone_number", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field817", model_as_string: "Spouse",
   attribute_as_string: "phone_number", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field781", model_as_string: "Ceremony",
   attribute_as_string: "date"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field774", model_as_string: "Ceremony",
   attribute_as_string: "time"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field825", model_as_string: "Venue",
   attribute_as_string: "city_or_county", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field338", model_as_string: "Venue", attribute_as_string: "name",
   related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field790", model_as_string: "Venue",
   attribute_as_string: "street_address", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field791", model_as_string: "Venue",
   attribute_as_string: "address_line_2", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field792", model_as_string: "Venue", attribute_as_string: "city",
   related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field793", model_as_string: "Venue", attribute_as_string: "state",
   related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field794", model_as_string: "Venue", attribute_as_string: "zip",
   related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field788", model_as_string: "Ceremony",
   attribute_as_string: "rehearsal_requested"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field932", model_as_string: "Ceremony",
   attribute_as_string: "planner_or_coordinator"},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field450", model_as_string: "Ceremony",
   attribute_as_string: "other_services", add_to_array: true},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field462", model_as_string: "Ceremony",
   attribute_as_string: "other_services", add_to_array: true},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field451", model_as_string: "Ceremony",
   attribute_as_string: "other_services", add_to_array: true},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field455", model_as_string: "Ceremony",
   attribute_as_string: "other_services", add_to_array: true},
  {form_hash_url: "z1qnut4c18w3k9d", field_api_id: "Field768", model_as_string: "Ceremony",
   attribute_as_string: "comments_or_questions"}
])
EntryParsingService.parse!("Fwd: Basic Information Form [#1807]")

# Wedding Rehearsal Planning Form (v2)
# https://mywestmichiganwedding.wufoo.com/api/code/20
EntryMap.create([
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field1", model_as_string: "Spouse",
   attribute_as_string: "full_name", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field427", model_as_string: "Spouse", attribute_as_string: "email",
   related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field5", model_as_string: "Spouse",
   attribute_as_string: "full_name", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field426", model_as_string: "Spouse", attribute_as_string: "email",
   related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field2", model_as_string: "Ceremony",
   attribute_as_string: "date"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field306", model_as_string: "Ceremony",
   attribute_as_string: "time"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field304", model_as_string: "Ceremony",
   attribute_as_string: "rehearsal_date"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field3", model_as_string: "Ceremony",
   attribute_as_string: "rehearsal_time"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field429", model_as_string: "Venue", attribute_as_string: "name",
   related_model: "Ceremony", relationship_name: "rehearsal_venue"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field19", model_as_string: "Ceremony",
   attribute_as_string: "rehearsal_dinner_start_time"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field272", model_as_string: "Ceremony",
   attribute_as_string: "planner_or_coordinator"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field25", model_as_string: "Ceremony",
   attribute_as_string: "planner_first_name"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field26", model_as_string: "Ceremony",
   attribute_as_string: "planner_last_name"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field33", model_as_string: "Ceremony",
   attribute_as_string: "planner_phone_number"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field34", model_as_string: "Ceremony",
   attribute_as_string: "planner_email"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field10", model_as_string: "Spouse",
   attribute_as_string: "mother_name", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field417", model_as_string: "Spouse",
   attribute_as_string: "father_name", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field416", model_as_string: "Spouse",
   attribute_as_string: "step_mother_name", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field418", model_as_string: "Spouse",
   attribute_as_string: "step_father_name", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field422", model_as_string: "Spouse",
   attribute_as_string: "mother_name", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field421", model_as_string: "Spouse",
   attribute_as_string: "father_name", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field420", model_as_string: "Spouse",
   attribute_as_string: "step_mother_name", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field419", model_as_string: "Spouse",
   attribute_as_string: "step_father_name", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field300", model_as_string: "Spouse",
   attribute_as_string: "witness_name", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field11", model_as_string: "Spouse",
   attribute_as_string: "witness_name", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field9", model_as_string: "Ceremony",
   attribute_as_string: "primary_spouse_attendants"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field298", model_as_string: "Ceremony",
   attribute_as_string: "secondary_spouse_attendants"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field21", model_as_string: "Ceremony",
   attribute_as_string: "other_processional_attendants"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field424", model_as_string: "Ceremony",
   attribute_as_string: "animal_attendants"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field264", model_as_string: "Ceremony",
   attribute_as_string: "holding_wedding_rings"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field22", model_as_string: "Ceremony",
   attribute_as_string: "ushers"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field151", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field153", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field154", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field155", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field156", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field158", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field157", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field152", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field414", model_as_string: "Ceremony",
   attribute_as_string: "ancestors_seating", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field262", model_as_string: "Ceremony",
   attribute_as_string: "processional_songs", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field256", model_as_string: "Ceremony",
   attribute_as_string: "processional_songs", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field263", model_as_string: "Ceremony",
   attribute_as_string: "processional_songs", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field147", model_as_string: "Spouse",
   attribute_as_string: "escort_name", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field283", model_as_string: "Ceremony",
   attribute_as_string: "guest_dismissal", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field284", model_as_string: "Ceremony",
   attribute_as_string: "guest_dismissal", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field410", model_as_string: "Ceremony",
   attribute_as_string: "guest_dismissal", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field149", model_as_string: "Ceremony",
   attribute_as_string: "guest_dismissal", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field307", model_as_string: "Ceremony",
   attribute_as_string: "guest_dismissal", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field409", model_as_string: "Ceremony",
   attribute_as_string: "guest_dismissal", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field252", model_as_string: "Ceremony",
   attribute_as_string: "guest_dismissal", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field412", model_as_string: "Ceremony",
   attribute_as_string: "guest_dismissal", add_to_array: true},
  {form_hash_url: "m1xvqmb90hxcs09", field_api_id: "Field268", model_as_string: "Ceremony",
   attribute_as_string: "photography"}
])
EntryParsingService.parse!("Fwd: Wedding Rehearsal Planning Form (v2) [#464]")

# Our Wedding Ceremony (v9)
# form_hash_url: z13fw81l0rp9wff
# https://mywestmichiganwedding.wufoo.com/api/code/10

EntryMap.create([
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field158", model_as_string: "Spouse", attribute_as_string: "forename", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field159", model_as_string: "Spouse", attribute_as_string: "surname", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field725", model_as_string: "Spouse", attribute_as_string: "preferred_name", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field160", model_as_string: "Spouse", attribute_as_string: "forename", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field161", model_as_string: "Spouse", attribute_as_string: "surname", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field727", model_as_string: "Spouse", attribute_as_string: "preferred_name", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field750", model_as_string: "Spouse", attribute_as_string: "phone_number", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field699", model_as_string: "Spouse", attribute_as_string: "phone_number", related_model: "Ceremony", relationship_name: "secondary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field975", model_as_string: "Spouse", attribute_as_string: "email", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field976", model_as_string: "Ceremony", attribute_as_string: "planner_or_coordinator"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field701", model_as_string: "Ceremony", attribute_as_string: "date"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field739", model_as_string: "Ceremony", attribute_as_string: "time"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field979", model_as_string: "Venue", attribute_as_string: "name", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field384", model_as_string: "Venue", attribute_as_string: "street_address", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field385", model_as_string: "Venue", attribute_as_string: "address_line_2", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field386", model_as_string: "Venue", attribute_as_string: "city", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field387", model_as_string: "Venue", attribute_as_string: "state", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field388", model_as_string: "Venue", attribute_as_string: "zip", related_model: "Ceremony", relationship_name: "venue"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field696", model_as_string: "Ceremony", attribute_as_string: "other_ceremony_participants"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field765", model_as_string: "Ceremony", attribute_as_string: "child_participants"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field973", model_as_string: "Ceremony", attribute_as_string: "number_of_attendants"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field767", model_as_string: "Ceremony", attribute_as_string: "number_of_child_attendants"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field768", model_as_string: "Ceremony", attribute_as_string: "number_of_child_attendants"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field769", model_as_string: "Ceremony", attribute_as_string: "number_of_child_attendants"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field770", model_as_string: "Ceremony", attribute_as_string: "child_attendants_notes", add_to_text: true},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field771", model_as_string: "Ceremony", attribute_as_string: "child_attendants_notes", add_to_text: true},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field772", model_as_string: "Ceremony", attribute_as_string: "child_attendants_notes", add_to_text: true},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field773", model_as_string: "Ceremony", attribute_as_string: "child_attendants_notes", add_to_text: true},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field774", model_as_string: "Ceremony", attribute_as_string: "child_attendants_notes", add_to_text: true},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field775", model_as_string: "Ceremony", attribute_as_string: "child_attendants_notes", add_to_text: true},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field722", model_as_string: "Spouse", attribute_as_string: "spiritual_statement", related_model: "Ceremony", relationship_name: "primary_spouse"},
  {form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field731", model_as_string: "Spouse", attribute_as_string: "spiritual_statement", related_model: "Ceremony", relationship_name: "secondary_spouse"},
])

section = Section.create(name: "Pre-Ceremony Announcement", is_default: true)
Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field766", field_response: "Silence phones and no photography", name: "no phones or photos", is_default: true, default_section: section, text: "Friends, a quick reminder before we begin to please silence your cell phones and refrain from taking photos or videos during the ceremony. Thank you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field766", field_response: "Silence phones" name: "no phones", default_section: section, text: "Friends, a quick reminder to please silence your cell phones before we begin the ceremony. Thank you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field766", field_response: "Silence phones, no photography and do not post to social media until the couple has had the first opportunity", name: "no phones, photos, or social", default_section: section, text: "Friends, a quick reminder before we begin to please silence your cell phones and refrain from taking photos or videos during the ceremony. Please also allow the couple to have the first opportunity to post on social media. Thank you.")

section = Section.create(name: "Processional", is_default: true, default_previous_section: section)
# has no elements, just a header

section = Section.create(name: "Greeting", is_default: true, default_previous_section: section)
Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field718", field_response: "Greeting #1", name: "Greeting #1", is_default: true, default_section: section, text: "We gather today #PRESENCE_OF_GOD# to celebrate the gift of marriage, and to witness the joining together of #NAMES#. Marriage is a supreme sharing of experience. It's an adventure in the most intimate of human relationships. It is the joyous union of two people whose friendship and understanding flowered into romance - and now embraces a new level of commitment. #NAMES# today you proclaim your love and your commitment to each other publicly and we gather to celebrate with you in this new life that you now begin together.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field718", field_response: "Greeting #2", name: "Greeting #2", default_section: section, text: "We gather today #PRESENCE_OF_GOD# to celebrate the gift of marriage, and to witness the joining together of #NAMES#. They thank you all for being here today and they recognize how important you are to their relationship. Your presence shows your support and your love has helped make this moment possible.  #NAMES#, today you proclaim your love and your commitment to each other publicly and we gather to celebrate with you in this new life that you now begin together.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field718", field_response: "Greeting #3", name: "Greeting #3", default_section: section, text: "We gather today #PRESENCE_OF_GOD# to celebrate the gift of marriage, and to witness the joining together of #NAMES#. They thank you all for being here today and they recognize how important you are to their relationship. Your presence shows your support and your love has helped make this moment possible.  #NAMES#, your marriage is a supreme sharing of experience. It's an adventure in the most intimate of human relationships. It is the joyous union of two people whose friendship and understanding flowered into romance - and now embraces a new level of commitment. #NAMES# today you proclaim your love and your commitment to each other publicly and we gather to celebrate with you in this new life that you now begin together.")

section = Section.create(name: "Moment of Remembrance", default_previous_section: section, form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field123", field_response: "Yes")

element = Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field123", field_response: "Yes", name: "Default remembrance", is_default: true, default_section: section, text: "#NAMES# have requested that we observe a moment of reflection to remember those who due to circumstances or distance could not be with us today.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field869", field_response: "We especially honor the memory of (names)", name: "We especially honor the memory of...", default_section: section, text: "We especially honor the memory of #REMEMBRANCE_NAMES#. Their role in the lives of #NAMES# is greatly acknowledged as we witness this joyous event.", default_previous_element: element)

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field870", field_response: "This event is shared, in a different way, by some who have passed beyond this life, and so we honor the memory of (names)", name: "...some who have passed beyond this life", default_section: section, text: "This event is shared, in a different way, by some who have passed beyond this life and so we honor the memory of #REMEMBRANCE_NAMES#.", default_previous_element: element)

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field871", field_response: "	Their role in the lives of (the couple's names) is greatly acknowledged as we witness this joyous event.", name: "Their role in the lives of the couple", default_section: section, text: "Their role in the lives of #NAMES# is greatly acknowledged as we witness this joyous event.", default_previous_element: element)

# TODO: how to inject this after whichever is above? By is_default flag?
Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field123", field_response: "Yes", name: "Default remembrance closing", is_default: true, default_section: section, text: "Please join me in a moment of reflection #FOLLOWED_BY_PRAYER#.", default_previous_element: element)

# TODO: has "Other"
section = Section.create(name: "Opening Prayer", is_default: true, is_religious: true, default_previous_section: section, form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: ["Prayer #1", "Reflection or Prayer #2", "Prayer #3", "No preference"])

# TODO: has "Other"
element = Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: ["Prayer #1", "Reflection or Prayer #2", "Prayer #3", "No preference"], name: "Opening prayer title", is_default: true, default_section: section, text: "Let's pray.")

# TODO: has "Other"
# TODO: could these Element records be used again for the closing prayer?
["Heavenly Father, ...", "Dear Lord, ...", "Loving God, ...", "Gracious God, ...", "Eternal God, ..."].each do |option|
  name = option.gsub(" ...", "")
  Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field745", field_response: option, name: name, text: name, default_section: section, default_previous_element: element)
end

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: "Prayer #1", name: "Prayer #1", text: "source of all blessing, in happiness and joy we thank you for the gift of marriage which we celebrate today. May you give #NAMES# the ability to rejoice always in their love. And may their life together embrace and nurture the promise of this moment, so that all who know them will call them truly blessed and happy.", default_section: section)

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: "Reflection or Prayer #2", name: "Reflection or Prayer #2", text: "may we be grateful for the capacity to see, feel, hear and understand. And may we be grateful for this incredible gift of life. Let us be especially grateful for the ties of love that bind us together, giving dignity, meaning, worth and joy to all our days. Let us rejoice in this beautiful day and let us count our many blessings.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: "Prayer #3", name: "Prayer #3", text: "bless #NAMES# as they wed. Remind them daily of the strong love they share so they may be their best selves through each other. Give them thankful hearts in good times and faithful hearts in hard times. And may they share a selfless love, a patient love and a gracious and forgiving love.")

# TODO: could these Element records be used again for the closing prayer?
# TODO: how to inject this after whichever is above? By is_default flag?
["Amen", "In the name of the Father and of the Son and of the Holy Spirit, Amen", "In Jesus name we pray, Amen", "In the name of Jesus Christ our Lord, Amen"].each do |option|
  Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field746", field_response: option, name: option, text: option, default_section: section)
end

section = Section.create(name: "Presentation", is_default: true, default_previous_section: section, form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field729", field_response: "Yes")

EntryMap.create(
  form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field378", model_as_string: "Spouse", attribute_as_string: "escort_name", related_model: "Ceremony", relationship_name: "primary_spouse"
)

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field376", field_response: "Who gives this woman to be married to this man today?", name: "Who gives this woman to be married to this man today?", text: "Who gives this woman to be married to this man today?", default_section: section)

Element.create(form_has_url: "z13fw81l0rp9wff", field_api_id: "Field376", default_section: section, field_response: "Who presents this woman to be married to this man today?", name: "Who presents this woman to be married to this man today?", text: "Who presents this woman to be married to this man today?" )

Element.create(form_has_url: "z13fw81l0rp9wff", field_api_id: "Field376", default_section: section, field_response: "Who gives their blessing for this woman to be married today?", name: "Who gives their blessing for this woman to be married today?", text: "Who gives their blessing for this woman to be married today?")

Element.create(form_has_url: "z13fw81l0rp9wff", field_api_id: "Field376", default_section: section, field_response: "Who gives their blessing for this man and woman to be married today?", name: "Who gives their blessing for this man and woman to be married today?", text: "Who gives their blessing for this man and woman to be married today?")

Element.create(form_has_url: "z13fw81l0rp9wff", field_api_id: "Field376", default_section: section, field_response: "Marriage is more than the union of two people, it's also the joining of two families. So I ask, who gives their blessing and support for this marriage?", name: "Marriage is more than the union of two people, it's also the joining of two families. So I ask, who gives their blessing and support for this marriage?", text: "Marriage is more than the union of two people, it's also the joining of two families. So I ask, who gives their blessing and support for this marriage?")


section = Section.create(name: "Declaration of Intent", is_default: true, default_previous_section: section)

element = Element.create(default_section: section, is_default: true, name: "Declaration of Intent Intro", text: "It is now time for you both to declare your intentions here today. #FIRST_NAME_2#, I ask that you go first.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field129", field_response: "#1", default_section: section, default_previous_element: element, name: "Declaration of Intent #1", text: "#FIRST_NAME_2#, do you take #FIRST_NAME_1# to be your lawfully wedded #DECLARATIVE_1# and to live in marriage?  If so, please say, “I do.” (I do)\nAnd do you pledge to love #NOMITIVE_1#, comfort #NOMITIVE_1#, honor #NOMITIVE_1# and stay by #POSESSIVE_1# side in sickness and health? (I do)\nAnd do you pledge to be faithful to #NOMITIVE_1# all the days of your life together? (I do)\n#FIRST_NAME_1# do you take #FIRST_NAME_2# to be your lawfully wedded #DECLARATIVE_2# and to live in marriage? If so, please say, “I do.” (I do)\nAnd do you pledge to love #NOMITIVE_2#, comfort #NOMITIVE_2#, honor #NOMITIVE_2# and stay by #POSESSIVE_2# side in sickness and health? (I do)\nAnd do you pledge to be faithful to #NOMITIVE_2# all the days of your life together? (I do)
")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field129", field_response: "#2", default_section: section, default_previous_element: element, name: "Declaration of Intent #2", text: "#NAMES_SHUFFLED_RANDOMLY# do you come before these witnesses today proclaiming your love and devotion for each other?  If so, please say, “we do.” (We do)\nAnd do you promise to keep this bond of love strong and commit yourself fully to this marriage? (We do)\nAnd do you pledge to be faithful to each other all the days of your life together? (We do)")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field129", field_response: "#3", default_section: section, default_previous_element: element, name: "Declaration of Intent #3", text: "#FIRST_NAME_2# do you love #FIRST_NAME_1#? If so, please say, “I do.” (I do)\nAnd do you want to marry #NOMITIVE_1#? (I do)\nAnd do you understand the importance of the promises you are about to make to #NOMITIVE_1#? (I do)\n#FIRST_NAME_1# do you love #FIRST_NAME_2#? If so, please say, “I do.” (I do)\nAnd do you want to marry #NOMITIVE_2#? (I do)\nAnd do you understand the importance of the promises you are about to make to #NOMITIVE_2#? (I do)")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field129", field_response: "#4", default_section: section, default_previous_element: element, name: "Declaration of Intent #4", text: "Do you #FIRST_NAME_2# welcome #FIRST_NAME_1# as your #DECLARATIVE_1#, offering #NOMITIVE_1# your love, encouragement, trust, and respect as together you create your future?  If so, please say, “I do.” (I do)\nDo you #FIRST_NAME_1# welcome #FIRST_NAME_2# as your #DECLARATIVE_2#, offering #NOMITIVE_2# your love, encouragement, trust, and respect as together you create your future?  If so, please say, “I do.” (I do)")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field129", field_response: "#5", default_section: section, default_previous_element: element, name: "Declaration of Intent #5", text: "Do you #FIRST_NAME_2# take #FIRST_NAME_1# as your favorite person, to share the adventure of life with?  If so, please say, “I do.” (I do)\nAnd will you support #NOMITIVE_1# through life's toughest moments, grow old with #NOMITIVE_1# and protect your love for #NOMITIVE_1# everyday?  If so, please say, “I will.” (I will)\nDo you #FIRST_NAME_1# take #FIRST_NAME_2# as your favorite person, to share the adventure of life with?  If so, please say, “I do.” (I do)\bAnd will you support #NOMITIVE_2# through life's toughest moments, grow old with #NOMITIVE_2# and protect your love for #NOMITIVE_2# everyday?  If so, please say, “I will.” (I will)")

section = Section.create(name: "Words of Encouragement", is_default: true, default_previous_section: section)

element = Element.create(default_section: section, name: "Words of Encouragement Intro", text: "At this time, I'd like to present you both with some words of encouragement.")

# TODO: if there are additional elements, add to text
Element.create(default_section: section, default_previous_element: element, name: "Words of Encouragement Short", text: "This poem comes from author Elliott Arnold, written in 1947:\nMay you feel no rain, for each of you will give shelter to the other.\nMay you feel no cold, for each of you will be warmth for the other.\nMay there be no loneliness, for you will be faithful companions.\nThough you are two persons, there is but one life before you.\nMay you enter into the days of your togetherness.\nAnd may those days be good and long together.")

Element.create(default_section: section, default_previous_element: element, name: "Words of Encouragement Long", text: "This reading comes from “Blessings for a Marriage” by James Dillet Freeman:\nMay your marriage bring you all the exquisite excitements a marriage should bring, and may life grant you also patience, tolerance, and understanding. May you always need one another - not to fill your emptiness, but to help you to know your fullness. May you need one another, but not out of weakness. May you want one another, but not out of lack. May you entice one another, but not through compulsion. May you embrace one another, but not encircle each other. May you succeed in all important ways with one another, and not fail in the little graces. May you look for things to praise, and take no notice of small faults. May you enter into the mystery that is the awareness of one another's presence - no more physical than spiritual, warm and near even when you are far apart. May you have happiness and may you find it while making one another happy. May you have love and may you find it loving one another.")


section = Section.create(name: "Vow Exchange", is_default: true, default_previous_section: section)

element = Element.create(default_section: section, name: "Vow Exchange Intro", text: "#NAMES_SHUFFLED_RANDOMLY#, the covenant which you are about to enter into is a beautiful and sacred expression of your love for each other.\nYou will now share your vows with each other, in all seriousness- but also with a deep sense of the joy and expectation that your future together holds.\nDo you understand the importance of the promises you are about to make? If so, please say “we do”. (We do)\nThen please state your intent to enter into this union by expressing the vows that you have chosen to say to each other today.")

# Field111 secondary_spouse vows
Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#1", default_section: section, name: "secondary_spouse Vow #1", text: "#FIRST_NAME_1#, I love you. / You are the one I want to spend the rest of my life with. / By all that we hold sacred /  I promise my faith and devotion to you. / I take you to be my #DECLARATIVE_1#.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#2 - Most commonly used.", default_section: section, name: "secondary_spouse Vow #2", text: "I, #FIRST_NAME_2#, take you #FIRST_NAME_1#, to be my #DECLARATIVE_1#. / To have and to hold from this day forward. / For better, for worse / for richer, for poorer / in sickness and in health / in joy and in sorrow / to love and to cherish / and to be faithful to you alone,  all the days of my life. / This is my promise to you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#3", default_section: section, name: "secondary_spouse Vow #3", text: "#FIRST_NAME_1#, all that I am, and all that I have / I offer to you, in love and in joy. / From this day forward / I will love and comfort you / hold you close / prize you above all others / and remain faithful to you all the days of our lives.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#4", default_section: section, name: "secondary_spouse Vow #4", text: "#FIRST_NAME_1#, I take you to be my #DECLARATIVE_1#. / I promise to be true to you in good times and in bad / in sickness and in health / in joy and in sorrow. / I will love you and honor you / all the days of my life. / This is my promise to you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#5 - 2nd most commonly used", default_section: section, name: "secondary_spouse Vow #5", text: "#FIRST_NAME_1#, I take you to be my #DECLARATIVE_1# / to have and to hold from this day forward. / I give to you my unending love and devotion. / I promise to be true to you.  / I promise to cherish you.  / I promise to share my hopes and dreams with you. / I look forward to spending the rest of my life with you / my best friend. / I will love you forever.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#6", default_section: section, name: "secondary_spouse Vow #6", text: "#FIRST_NAME_1#, in the presence of God and before these witnesses / I take you to be my #DECLARATIVE_1#. / I give you my hand / I give you my love / and I give you myself. / I pledge to stand by you as long as we live. / Come, travel with me / and share the road / both when it is hard and when it is easy.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#7", default_section: section, name: "secondary_spouse Vow #7", text: "#FIRST_NAME_1#, I commit my life to our partnership in marriage. / I promise to comfort you / and to encourage you / in our journey through life. / I promise to express my thoughts and emotions to you / and to listen to you in times of joy / and in times of sorrow. / I love you and you are my closest friend.  / I will share my life and all that I am with you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#8 - 3rd most commonly used", default_section: section, name: "secondary_spouse Vow #8", text: "#FIRST_NAME_1#, from this day forward / I promise you these things / I will laugh with you in times of joy / and comfort you in times of sorrow. / I will share in your dreams / and support you as you strive to achieve your goals. / I will listen to you with compassion and understanding / and speak to you with encouragement. / I will help you when you need it / and step aside when you don't. / I will remain faithful to you for better or worse / and in times of sickness and health. / You are my best friend / and I will love and respect you always.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#9", default_section: section, name: "secondary_spouse Vow #9", text: "#FIRST_NAME_1#, I take you to be my #DECLARATIVE_1# / From this day forward / I promise you these things. / I will be true to you in good times and in bad / in sickness and in health / in joy and in sorrow. / I will be faithful to you all the days of my life. / You are my best friend / and this is my promise to you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field111", default_previous_element: element, field_response: "#10", default_section: section, name: "secondary_spouse Vow #10", text: "In the presence of God and these witnesses /  I #FIRST_NAME_2#, take you #FIRST_NAME_1#, to be my #DECLARATIVE_1#. / I will cherish our friendship / and love you today, tomorrow, and forever. / I will trust you and honor you. / I will love you faithfully through the best and the worst / through the difficult and the easy. / Whatever may come I will always be there. / As I have given you my hand to hold / so I give you my life to keep. / And I will love you every day with the help of God.")

# Field720 Bride vows
# repeat the secondary_spouse vows, but replace the #KEYWORDS# that have a 1 with a 2 and vice versa, also replace secondary_spouse with primary_spouse, also replace "Field111" with "Field720"
Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#1", default_section: section, name: "primary_spouse Vow #1", text: "#FIRST_NAME_2#, I love you. / You are the one I want to spend the rest of my life with. / By all that we hold sacred /  I promise my faith and devotion to you. / I take you to be my #DECLARATIVE_2#.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#2 - Most commonly used.", default_section: section, name: "primary_spouse Vow #2", text: "I, #FIRST_NAME_1#, take you #FIRST_NAME_2#, to be my #DECLARATIVE_2#. / To have and to hold from this day forward. / For better, for worse / for richer, for poorer / in sickness and in health / in joy and in sorrow / to love and to cherish / and to be faithful to you alone,  all the days of my life. / This is my promise to you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#3", default_section: section, name: "primary_spouse Vow #3", text: "#FIRST_NAME_2#, all that I am, and all that I have / I offer to you, in love and in joy. / From this day forward / I will love and comfort you / hold you close / prize you above all others / and remain faithful to you all the days of our lives.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#4", default_section: section, name: "primary_spouse Vow #4", text: "#FIRST_NAME_2#, I take you to be my #DECLARATIVE_2#. / I promise to be true to you in good times and in bad / in sickness and in health / in joy and in sorrow. / I will love you and honor you / all the days of my life. / This is my promise to you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#5 - 2nd most commonly used", default_section: section, name: "primary_spouse Vow #5", text: "#FIRST_NAME_2#, I take you to be my #DECLARATIVE_2# / to have and to hold from this day forward. / I give to you my unending love and devotion. / I promise to be true to you.  / I promise to cherish you.  / I promise to share my hopes and dreams with you. / I look forward to spending the rest of my life with you / my best friend. / I will love you forever.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#6", default_section: section, name: "primary_spouse Vow #6", text: "#FIRST_NAME_2#, in the presence of God and before these witnesses / I take you to be my #DECLARATIVE_2#. / I give you my hand / I give you my love / and I give you myself. / I pledge to stand by you as long as we live. / Come, travel with me / and share the road / both when it is hard and when it is easy.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#7", default_section: section, name: "primary_spouse Vow #7", text: "#FIRST_NAME_2#, I commit my life to our partnership in marriage. / I promise to comfort you / and to encourage you / in our journey through life. / I promise to express my thoughts and emotions to you / and to listen to you in times of joy / and in times of sorrow. / I love you and you are my closest friend.  / I will share my life and all that I am with you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#8 - 3rd most commonly used", default_section: section, name: "primary_spouse Vow #8", text: "#FIRST_NAME_2#, from this day forward / I promise you these things / I will laugh with you in times of joy / and comfort you in times of sorrow. / I will share in your dreams / and support you as you strive to achieve your goals. / I will listen to you with compassion and understanding / and speak to you with encouragement. / I will help you when you need it / and step aside when you don't. / I will remain faithful to you for better or worse / and in times of sickness and health. / You are my best friend / and I will love and respect you always.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#9", default_section: section, name: "primary_spouse Vow #9", text: "#FIRST_NAME_2#, I take you to be my #DECLARATIVE_2# / From this day forward / I promise you these things. / I will be true to you in good times and in bad / in sickness and in health / in joy and in sorrow. / I will be faithful to you all the days of my life. / You are my best friend / and this is my promise to you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field720", field_response: "#10", default_section: section, name: "primary_spouse Vow #10", text: "In the presence of God and these witnesses /  I #FIRST_NAME_1#, take you #FIRST_NAME_2#, to be my #DECLARATIVE_2#. / I will cherish our friendship / and love you today, tomorrow, and forever. / I will trust you and honor you. / I will love you faithfully through the best and the worst / through the difficult and the easy. / Whatever may come I will always be there. / As I have given you my hand to hold / so I give you my life to keep. / And I will love you every day with the help of God.")


######## TODO: optional section for additional elements
# NOTE: push any values to Ceremony#other_services array
# Field274 Reading or poetry (yes/no)
# Field275 Scripture reading (yes/no)
# Field286 Handfasting (yes/no)
# Field276 Unity candle (yes/no)
# Field277 Sand vase ceremony (yes/no)
# Field287 Time Capsule (yes/no)
# Field278 Love-letter ceremony (yes/no)
# Field282 Wine Box Ceremony (yes/no)
# Field283 Unity Cross Ceremony (yes/no)
# Field284 Cord of Three Strands Ceremony (yes/no)
# Field288 Fisherman's Knot (yes/no)
# Field279 Rose exchange ceremony (yes/no)
# Field280 The Lord's Prayer / The Our Father (yes/no)
# Field281 Soloist or instrumentalist (yes/no)
# Field285 Other (yes/no)

# Field 136 ring exchange (yes/no)
section = Section.create(name: "Ring Exchange", is_default: true, default_previous_section: section, form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field136", field_response: "Yes")

element = Element.create(name: "Ring Exchange Intro", default_section: section, text: "The wedding ring is a symbol of unity, a circle unbroken without beginning or end. Today you give and receive these rings as a demonstration of your vow to make your life one. This is a physical representation of the promises that you just made.\nYour intent is to create a love that is whole and unbroken- and to enjoy a marriage that is without end.\n#FIRST_NAME_2#, please take #FIRST_NAME_1#'s ring, place it on #POSESSIVE_1# finger, and state your pledge repeating after me.")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange #1", text: "With this ring, I pledge my abiding love. /  Accept this ring / as a sign of my faithfulness / and a symbol of our union.", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field103", field_response: "With this ring I pledge my abiding love. / Accept this ring / as a sign of my faithfulness / and a symbol of our union.")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange #2", text: "I give you this ring / as a token of my faithfulness / a symbol of my love / and a reminder that I am always by your side.", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field103", field_response: "I give you this ring / as a token of my faithfulness / a symbol of my love / and a reminder that I am always by your side.")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange #3", text: "#FIRST_NAME_1#, receive and wear this ring / as a symbol of my faithfulness to you / my respect for you/ and our unity in marriage.", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field103", field_response: "(Name) receive and wear this ring / as a symbol of my faithfulness to you / my respect for you/ and our unity in marriage.")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange #4", text: "With this ring I pledge my love to you / and join my life to yours.", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field103", field_response: "With this ring I pledge my love to you / and join my life to yours.")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange #5", text: "With this ring / I commit my life to you in marriage", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field103", field_response: "With this ring / I commit my life to you in marriage")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange #6", text: "With this ring I marry you / and join my life to yours.", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field103", field_response: "With this ring I marry you / and join my life to yours.")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange #7", text: "With this ring / I marry you.", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field103", field_response: "With this ring I marry you.")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange #8", text: "With this ring / I bind my life to yours / It is a symbol of my eternal love / my everlasting friendship / and the promise of all my tomorrows", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field103", field_response: "With this ring / I bind my life to yours /It is a symbol of my eternal love / my everlasting friendship / and the promise of all my tomorrows")

Element.create(default_section: section, default_previous_element: element, name: "Ring Exchange primary_spouse", text: "#FIRST_NAME_1#, please take #FIRST_NAME_2#'s ring, place it on #POSESSIVE_2# finger, and state your pledge repeating after me.")

# TODO: Has "Other" option
section = Section.create(name: "Marriage Blessing", is_default: true, default_previous_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field144", field_response: ["May God bless you and watch over you. May God be kind and gracious to you. May God look on you with favor and give you peace. Amen.", "From this day forward, may your marriage be known for its love and happiness. And may the joys of today be those of tomorrow.", "May God's wonderful blessing be upon you, your marriage and your life together.", "May your understanding of each other grow with your love until the wonder of each night and day becomes a lifetime of happiness together.", "The Lord bless and keep you.The Lord make His face shine on you and be gracious to you.The Lord lift up His countenance upon you and give you peace", "May your union grant you the understanding, passion and excitement every marriage should possess as you cherish your love as the greatest gift of all.", "no preference"])

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field144", field_response: "May God bless you and watch over you. May God be kind and gracious to you. May God look on you with favor and give you peace. Amen.", name: "May God bless you and watch over you. May God be kind and gracious to you. May God look on you with favor and give you peace. Amen.", text: "May God bless you and watch over you. May God be kind and gracious to you. May God look on you with favor and give you peace. Amen.")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field144", field_response: "From this day forward, may your marriage be known for its love and happiness. And may the joys of today be those of tomorrow.", name: "From this day forward, may your marriage be known for its love and happiness. And may the joys of today be those of tomorrow.", text: "From this day forward, may your marriage be known for its love and happiness. And may the joys of today be those of tomorrow.")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field144", field_response: "May God's wonderful blessing be upon you, your marriage and your life together.", name: "May God's wonderful blessing be upon you, your marriage and your life together.", text: "May God's wonderful blessing be upon you, your marriage and your life together.")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field144", field_response: "May your understanding of each other grow with your love until the wonder of each night and day becomes a lifetime of happiness together.", name: "May your understanding of each other grow with your love until the wonder of each night and day becomes a lifetime of happiness together.", text: "May your understanding of each other grow with your love until the wonder of each night and day becomes a lifetime of happiness together.")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field144", field_response: "The Lord bless and keep you.The Lord make His face shine on you and be gracious to you.The Lord lift up His countenance upon you and give you peace", name: "The Lord bless and keep you. The Lord make His face shine on you and be gracious to you. The Lord lift up His countenance upon you and give you peace", text: "The Lord bless and keep you. The Lord make His face shine on you and be gracious to you. The Lord lift up His countenance upon you and give you peace")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field144", field_response: "May your union grant you the understanding, passion and excitement every marriage should possess as you cherish your love as the greatest gift of all.", name: "May your union grant you the understanding, passion and excitement every marriage should possess as you cherish your love as the greatest gift of all.", text: "May your union grant you the understanding, passion and excitement every marriage should possess as you cherish your love as the greatest gift of all.")

# TODO: Has "Other" option
section = Section.create(name: "Prayer after the ring exchange", is_default: true, is_religious: true, default_previous_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field141", field_responses: ["Prayer #1", "Prayer #2", "Prayer #3", "Prayer #4", "Prayer #5", "No preference"])

# Field743 prayer beginning
["Heavenly Father", "Dear Lord", "Loving God", "Gracious God", "Eternal God"].each do |field_response|
  Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field743", field_response: field_response, name: field_response, text: field_response)
end

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field141", field_response: "Prayer #1", name: "Prayer after Rings #1", text: "throughout their marriage, please remind #NAMES_SHUFFLED_RANDOMLY# of this moment so they will always see these rings as a sign of their commitment to each other and a reminder that in Your eyes they are one.")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field141", field_response: "Prayer #2", name: "Prayer after Rings #2", text: "bless these rings which #NAMES_SHUFFLED_RANDOMLY# have set apart to be visible signs of the inward and spiritual bond which unites their hearts. May they testify to the world of the promise made between them here.")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field141", field_response: "Prayer #3", name: "Prayer after Rings #3", text: "May the seamless circle of these rings be the symbol of your endless love. May these rings also serve to remind you of the covenant that you have entered into today to be faithful, loving, and kind to each other. And may you be forever true to this union.")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field141", field_response: "Prayer #4", name: "Prayer after Rings #4", text: "bless these symbols of love and devotion.  May these rings be an ever-present reminder of the gift of love you have given #NAMES_SHUFFLED_RANDOMLY#.  Bind their hearts tightly and may they live in your favor and grace all the days of their lives.")

Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field141", field_response: "Prayer #5", name: "Prayer after Rings #5", text: "give #NAMES_SHUFFLED_RANDOMLY# wisdom and devotion in the life they share, so that each may be to the other a strength in need, a counselor in perplexity, a comfort in sorrow, and a companion in joy.")

["Amen", "In the name of the Father and of the Son and of the Holy Spirit, Amen", "In Jesus name we pray, Amen", "In the name of Jesus Christ our Lord, Amen"].each do |field_response|
  Element.create(default_section: section, form_hash: "z13fw81l0rp9wff", field_api_id: "Field742", field_response: field_response, name: field_response, text: field_response)
end

section = Section.create(name: "Pronouncement", is_default: true, default_previous_section: section)

element = Element.create(default_section: section, name: "Pronouncement Intro", text: "#NAMES#, you have made your solemn vows to each other,#BEFORE_GOD# and in the presence of your family and friends. And you have confirmed these promises by the joining of hands- and the giving and receiving of rings.\nTherefore, by the authority granted me by the State of Michigan,#AND_PRESENCE_OF_GOD# and all these witnesses, I am happy to pronounce you #UNION_TITLE#
")

Element.create(default_section: section, default_previous_element: element, form_hash: "z13fw81l0rp9wff", field_api_id: "Field748", field_response: "You may celebrate with a kiss", name: "You may celebrate with a kiss", text: "You may celebrate with a kiss")

Element.create(default_section: section, default_previous_element: element, form_hash: "z13fw81l0rp9wff", field_api_id: "Field748", field_response: "You may kiss the bride", name: "You may kiss the bride", text: "You may kiss your #PRE_DECLARATIVE_1#")

Element.create(default_section: section, default_previous_element: element, form_hash: "z13fw81l0rp9wff", field_api_id: "Field748", field_response: "Please exchange a kiss as husband and wife", name: "Please exchange a kiss as husband and wife", text: "Please exchange a kiss as #DECLARATIVE_2# and #DECLARATIVE_1#")


section = Section.create(name: "Announcement", is_default: true, default_previous_section: section)
# Field272 Name for announcement (NOTE: SIMPLE EXAMPLE TO REMIND ME)
# 1. Write the value to Ceremony#married_names
EntryMap.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field272", model_as_string: "Ceremony", attribute_as_string: "presentation_title")

# 2. Create an Element with the text to say, including a keyword to interpolate
Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field272", default_section: section, name: "Announcement", text: "Dear friends, it is my great honor to present to you for the first time... #PRESENTATION_TITLE#!")

section = Section.create(name: "Recessional", is_default: true, default_previous_section: section)

# Field756 greet your guests options
# could skip having an entry, or have a single entry that calls a keyword that loads in the appropriate text directly from the entry value?

section = Section.create(name: "Dismissal", is_default: true, default_previous_section: section)

Element.create(name: "Dismissal", default_section: section, text: "Friends, I want to express my heartfelt thanks for your presence here today and your witness to this union.
As their family and friends, your relationships form the foundation of this new relationship.\nAs you have blessed them individually, may you now bless their marriage, and may their marriage be a blessing to you as well.\n\n#PRESENTATION_TITLE# look forward to greeting you at- the- reception which will begin at #RECEPTION_TIME# at #RECEPTION_LOCATION#. In the meantime, please enjoy #PRE_RECEPTION_FOOD# while you wait.\nWe are now dismissed. Thank you.")

# TODO: HERE: Finish strong!

# Field757 guest dismissal options
#   - EntryMap to ceremony#guest_dismissal array
# Field755 who announce dismissal details (probably ignore and always include dismissal language)

# Field758 refreshments before reception (radio buttons)
# Beverages only (includes beer and wine)
# Beverages (includes beer and wine) and appetizers
# Cocktails
# Cocktails and hors d'oeuvres
# No refreshments / does not apply
# Other

# Field760 pre-reception instructions
#   - EntryMap to ceremony?

# EntryParsingService.parse!("Fwd: Our Wedding Ceremony (v9) [#5000]")

# TODO: see README for thoughts on these:
InterpolationMap.create([
  {keyword: "PRESENCE_OF_GOD", model_as_string: "ceremony", attribute_as_string: "presence_of_god_text"},
  {keyword: "AND_PRESENCE_OF_GOD", model_as_string: "ceremony", attribute_as_string: "presence_of_god_text"},
  {keyword: "BEFORE_GOD", model_as_string: "ceremony", attribute_as_string: "before_god_text"},
  {keyword: "NAMES", model_as_string: "ceremony", attribute_as_string: "spouse_forenames"}
  {keyword: "REMEMBRANCE_NAMES", model_as_string: "ceremony", attribute_as_string: "remembrance_names"},
  {keyword: "FOLLOWED_BY_PRAYER", model_as_string: "ceremony", attribute_as_string: "followed_by_prayer_text"},
  {keyword: "NAMES_SHUFFLED_RANDOMLY", model_as_string: "ceremony", attribute_as_string: "spouse_forenames_shuffled"},
  {keyword: "FIRST_NAME_1", model_as_string: "ceremony", attribute_as_string: "primary_spouse.forename"},
  {keyword: "FIRST_NAME_2", model_as_string: "ceremony", attribute_as_string: "secondary_spouse.forename"},
  {keyword: "DECLARATIVE_1", model_as_string: "ceremony", attribute_as_string: "primary_spouse.declarative"},
  {keyword: "DECLARATIVE_2", model_as_string: "ceremony", attribute_as_string: "secondary_spouse.declarative"},
  {keyword: "NOMITIVE_1", model_as_string: "ceremony", attribute_as_string: "primary_spouse.nomitive"},
  {keyword: "NOMITIVE_2", model_as_string: "ceremony", attribute_as_string: "secondary_spouse.nomitive"},
  {keyword: "POSESSIVE_1", model_as_string: "ceremony", attribute_as_string: "primary_spouse.possessive"},
  {keyword: "POSESSIVE_2", model_as_string: "ceremony", attribute_as_string: "secondary_spouse.possessive"},
  {keyword: "DECLARATIVE_1", model_as_string: "ceremony", attribute_as_string: "primary_spouse.declarative"},
  {keyword: "PRE_DECLARATIVE_1", model_as_string: "ceremony", attribute_as_string: "primary_spouse.pre_declarative"},
  {keyword: "DECLARATIVE_2", model_as_string: "ceremony", attribute_as_string: "secondary_spouse.declarative"},
  {keyword: "UNION_TITLE", model_as_string: "ceremony", attribute_as_string: "union_title"}, # is technically "#{DECLARATIVE_2} and #{DECLARATIVE_1}" (e.g. "husband and wife")
  {keyword: "PRESENTATION_TITLE", model_as_string: "ceremony", attribute_as_string: "presentation_title"}, # e.g. "Mr. and Mrs. Smith"
  {keyword: "RECEPTION_TIME", model_as_string: "ceremony", attribute_as_string: "reception_time"},
  {keyword: "RECEPTION_LOCATION", model_as_string: "ceremony", attribute_as_string: "reception_location"},
  {keyword: "PRE_RECEPTION_FOOD", model_as_string: "ceremony", attribute_as_string: "pre_reception_food"}
])
