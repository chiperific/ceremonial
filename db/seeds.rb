# frozen_string_literal: true

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

section = Section.create(name: "Pre-Ceremony Announcement", is_default: true)
Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field766", field_response: "Silence phones and no photography", name: "no phones or photos", is_default: true, default_section: section, text: "Friends, a quick reminder before we begin to please silence your cell phones and refrain from taking photos or videos during the ceremony. Thank you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field766", field_response: "Silence phones" name: "no phones", default_section: section, text: "Friends, a quick reminder to please silence your cell phones before we begin the ceremony. Thank you.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field766", field_response: "Silence phones, no photography and do not post to social media until the couple has had the first opportunity", name: "no phones, photos, or social", default_section: section, text: "Friends, a quick reminder before we begin to please silence your cell phones and refrain from taking photos or videos during the ceremony. Please also allow the couple to have the first opportunity to post on social media. Thank you.")

section = Section.create(name: "Processional", is_default: true, default_previous_section: section)
section = Section.create(name: "Greeting", is_default: true, default_previous_section: section)

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field718", field_response: "Greeting #1", name: "Greeting #1", is_default: true, default_section: section, text: "We gather today #PRESENCE_OF_GOD# to celebrate the gift of marriage, and to witness the joining together of #NAMES#. Marriage is a supreme sharing of experience. It's an adventure in the most intimate of human relationships. It is the joyous union of two people whose friendship and understanding flowered into romance - and now embraces a new level of commitment. #NAMES# today you proclaim your love and your commitment to each other publicly and we gather to celebrate with you in this new life that you now begin together.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field718", field_response: "Greeting #2", name: "Greeting #2", default_section: section, text: "We gather today #PRESENCE_OF_GOD# to celebrate the gift of marriage, and to witness the joining together of #NAMES#. They thank you all for being here today and they recognize how important you are to their relationship. Your presence shows your support and your love has helped make this moment possible.  #NAMES#, today you proclaim your love and your commitment to each other publicly and we gather to celebrate with you in this new life that you now begin together.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field718", field_response: "Greeting #3", name: "Greeting #3", default_section: section, text: "We gather today #PRESENCE_OF_GOD# to celebrate the gift of marriage, and to witness the joining together of #NAMES#. They thank you all for being here today and they recognize how important you are to their relationship. Your presence shows your support and your love has helped make this moment possible.  #NAMES#, your marriage is a supreme sharing of experience. It's an adventure in the most intimate of human relationships. It is the joyous union of two people whose friendship and understanding flowered into romance - and now embraces a new level of commitment. #NAMES# today you proclaim your love and your commitment to each other publicly and we gather to celebrate with you in this new life that you now begin together.")

section = Section.create(name: "Moment of Remembrance", default_previous_section: section)

element = Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field123", field_response: "Yes", name: "Default remembrance", is_default: true, default_section: section, text: "#NAMES# have requested that we observe a moment of reflection to remember those who due to circumstances or distance could not be with us today.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field869", field_response: "We especially honor the memory of (names)", name: "We especially honor the memory of...", default_section: section, text: "We especially honor the memory of #REMEMBRANCE_NAMES#. Their role in the lives of #NAMES# is greatly acknowledged as we witness this joyous event.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field870", field_response: "This event is shared, in a different way, by some who have passed beyond this life, and so we honor the memory of (names)", name: "...some who have passed beyond this life", default_section: section, text: "This event is shared, in a different way, by some who have passed beyond this life and so we honor the memory of #REMEMBRANCE_NAMES#.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field871", field_response: "	Their role in the lives of (the couple's names) is greatly acknowledged as we witness this joyous event.", name: "Their role in the lives of the couple", default_section: section, text: "Their role in the lives of #NAMES# is greatly acknowledged as we witness this joyous event.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field123", field_response: "Yes", name: "Default remembrance closing", is_default: true, default_section: section, text: "Please join me in a moment of reflection #FOLLOWED_BY_PRAYER#.", default_previous_element: element)

section = Section.create(name: "Opening Prayer", is_default: true, is_religious: true, default_previous_section: section)

element = Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: ["Prayer #1", "Reflection or Prayer #2", "Prayer #3", "No preference"], name: "Opening prayer title", is_default: true, default_section: section, text: "Let's pray.")

["Heavenly Father, ...", "Dear Lord, ...", "Loving God, ...", "Gracious God, ...", "Eternal God, ...", "no title"].each do |option|
  name = option.gsub(" ...", "")
  Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field745", field_response: option, name: name, text: name, default_section: section)
end

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: "Prayer #1", name: "Prayer #1", text: "source of all blessing, in happiness and joy we thank you for the gift of marriage which we celebrate today. May you give #NAMES# the ability to rejoice always in their love. And may their life together embrace and nurture the promise of this moment, so that all who know them will call them truly blessed and happy.", default_section: section)

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: "Reflection or Prayer #2", name: "Reflection or Prayer #2", text: "may we be grateful for the capacity to see, feel, hear and understand. And may we be grateful for this incredible gift of life. Let us be especially grateful for the ties of love that bind us together, giving dignity, meaning, worth and joy to all our days. Let us rejoice in this beautiful day and let us count our many blessings.")

Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field115", field_response: "Prayer #3", name: "Prayer #3", text: "bless #NAMES# as they wed. Remind them daily of the strong love they share so they may be their best selves through each other. Give them thankful hearts in good times and faithful hearts in hard times. And may they share a selfless love, a patient love and a gracious and forgiving love.")

["Amen", "In the name of the Father and of the Son and of the Holy Spirit, Amen", "In Jesus name we pray, Amen", "In the name of Jesus Christ our Lord, Amen"].each do |option|
  Element.create(form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field746", field_response: option, name: option, text: option, default_section: section)
end

# TODO: "Field378" "Who will be presenting the bride?"
# Spouse.escort_name
EntryMap.create(
  form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field378",
)

section = Section.create(name: "Presentation", is_default: true, default_previous_section: section)

[]

section = Section.create(name: "Declaration of Intent", is_default: true, default_previous_section: section)
section = Section.create(name: "Words of Encouragement", is_default: true, default_previous_section: section)
section = Section.create(name: "Vow Exchange", is_default: true, default_previous_section: section)
section = Section.create(name: "Ring Exchange", is_default: true, default_previous_section: section)
section = Section.create(name: "Marriage Blessing", is_default: true, default_previous_section: section)
section = Section.create(name: "Prayer after the ring exchange", is_default: true, is_religious: true, default_previous_section: section)
section = Section.create(name: "Pronouncement", is_default: true, default_previous_section: section)
section = Section.create(name: "Announcement", is_default: true, default_previous_section: section)
section = Section.create(name: "Recessional", is_default: true, default_previous_section: section)
Section.create(name: "Dismissal", is_default: true, default_previous_section: section)


ceremony_planning_map = [
  {form_hash_url: "z13fw81l0rp9wff" }
]
# EntryParsingService.parse!("Fwd: Our Wedding Ceremony (v9) [#5000]")

# TODO: need methods for each record:
InterpolationMap.create([
  {keyword: "PRESENCE_OF_GOD", model_as_string: "Ceremony", attribute_as_string: "presence_of_god_text"},
  {keyword: "NAMES", model_as_string: "Ceremony", attribute_as_string: "spouse_first_names"}
  {keyword: "REMEMBRANCE_NAMES", model_as_string: "Ceremony", attribute_as_string: "remembrance_names"},
  {keyword: "FOLLOWED_BY_PRAYER", model_as_string: "Ceremony", attribute_as_string: "followed_by_prayer_text"},
])
