# frozen_string_literal: true

# https://mywestmichiganwedding.wufoo.com/api/code/12
basic_information_map = [
  {field_api_id: "Field9", model_as_string: "Spouse", attribute_as_string: "forename", relationship_name: "primary_spouse"},
  {field_api_id: "Field10", model_as_string: "Spouse", attribute_as_string: "surname", relationship_name: "primary_spouse"},
  {field_api_id: "Field815", model_as_string: "Spouse", attribute_as_string: "forename", relationship_name: "secondary_spouse"},
  {field_api_id: "Field816", model_as_string: "Spouse", attribute_as_string: "surname", relationship_name: "secondary_spouse"},
  {field_api_id: "Field829", model_as_string: "Spouse", attribute_as_string: "email", relationship_name: "primary_spouse"},
  {field_api_id: "Field328", model_as_string: "Spouse", attribute_as_string: "phone_number", relationship_name: "primary_spouse"},
  {field_api_id: "Field817", model_as_string: "Spouse", attribute_as_string: "phone_number", relationship_name: "secondary_spouse"},
  {field_api_id: "Field781", model_as_string: "Ceremony", attribute_as_string: "date" },
  {field_api_id: "Field774", model_as_string: "Ceremony", attribute_as_string: "time"},
  {field_api_id: "Field825", model_as_string: "Venue", attribute_as_string: "city_or_county"},
  {field_api_id: "Field338", model_as_string: "Venue", attribute_as_string: "name"},
  {field_api_id: "Field790", model_as_string: "Venue", attribute_as_string: "street_address"},
  {field_api_id: "Field791", model_as_string: "Venue", attribute_as_string: "address_line_2"},
  {field_api_id: "Field792", model_as_string: "Venue", attribute_as_string: "city"},
  {field_api_id: "Field793", model_as_string: "Venue", attribute_as_string: "state"},
  {field_api_id: "Field794", model_as_string: "Venue", attribute_as_string: "zip"},
  {field_api_id: "Field788", model_as_string: "Ceremony", attribute_as_string: "rehearsal_requested"},
  {field_api_id: "Field932", model_as_string: "Ceremony", attribute_as_string: "planner_or_coordinator"},
  {field_api_id: "Field450", model_as_string: "Ceremony", attribute_as_string: "other_services", add_to_array: true},
  {field_api_id: "Field462", model_as_string: "Ceremony", attribute_as_string: "other_services", add_to_array: true},
  {field_api_id: "Field451", model_as_string: "Ceremony", attribute_as_string: "other_services", add_to_array: true},
  {field_api_id: "Field455", model_as_string: "Ceremony", attribute_as_string: "other_services", add_to_array: true},
  {field_api_id: "Field768", model_as_string: "Ceremony", attribute_as_string: "document", add_to_json: true},
]

EntryMap.create(basic_information_map)
