# README

## NEXT STEPS
Keep working on seeds file. Don't forget about Optional sections for additional elements.

1. Create EntryMap records for the 3 main forms
  - Basic Information Form - DONE!
  - Wedding Rehearsal Planning Form (v2) - DONE!
  - Our Wedding Ceremony (v9)
    - create EntryMap records when entry data should be stored to a model
    - create Section and Element records when entry data should just indicate which ones to use / ignore

1. InterpolationMap decision
REMINDER: Element records have the text that needs to be interpolated
Maybe this is just a constant hash in the Ceremony class?

CASE: FIRST_NAME_1 should call self.ceremony.primary_spouse.forename to get a dynamic value
CASE: PRESENCE_OF_GOD should return some static text based on the ceremony.is_religious value

Could try a new structure: `InterpolationMap(keyword: String, method_chain: [], conditional_methods: [])`
```ruby
{keyword: "PRESENCE_OF_GOD", method_chain: ["ceremony", "presence_of_god_text"], conditional_methods: ["is_religious"]},
{keword: "FIRST_NAME_1", method_chain: ["ceremony", "primary_spouse", "forename"], conditional_methods: []}
```

- Element model needs an instance method to search through the `#text` attribute and replace the keywords with the interpolated values (using InterpolationMap records)

Ideally, you could add an InterpolationMap record and it would just work, but it would still be complex. The end user would still be writing the method chains and conditional methods, which would require some knowledge of the models. And if the models don't have that method, you'd still be stuck having to deploy code changes.

Would also require an Admin interface to manage records.

1. Decide how to handle ceremony building via wufoo responses
  - remember that all Sections and Elements already exist and have `default` and `default_previous` values
    - so each specific ceremony can use form_hash: "z13fw81l0rp9wff" entries to just gather a list of Section and Element IDs
    - remember that  I created CeremonyOrders model for some reason
  - build a "default" map that is a list of Our Wedding Ceremony (v9) form keys so you can iterate over the keys to find the right Sections and Elements
    - maybe a CeremonyMap model to just order the sections?

  - generate a "default" ceremony based on
    - "Form722"	For the bride: Please choose which answer best represents where you stand on issues of faith and spirituality.
    - "Form731"	For the groom: Please choose which answer best represents where you stand on issues of faith and spirituality.
  - from `EntryParsingService.parse!("Fwd: Our Wedding Ceremony (v9) [#4958]")`

1. Google integration:
  - Create Google Docs folder and set color
  - Create Google document with ceremony text
  - Create Calendar appointments & reminders

## Wufoo stuff
* Form
* Field (not needed, EntryMap can handle)
* Entry (in-memory only?)


* EntryMap (maps the field_api_id to the Model & attribute to store it in)
  - field_api_id
  - model
  - attribute

* OptionMap (translates an entry's value to the Entry record)
  - field_api_id
  - entry_text (e.g. "Greeting #1")
  - element_id

### Wedding stuff
* Ceremony
  - religious?
  - spouse_one:references Spouse
  - spouse_two:references Spouse
  - event_date
  - rehearsal_date
  - venue:references Venue

* Spouse
  - first name
  - last name
  - witness_name
  - nomitive
  - posessive
  - declarative

* Venue
  - name
  - address

### Ceremony builder stuff

Ceremonies:
  - foreign keys for primary_spouse and secondary_spouse
  - has document jsonb column for rehearsal info and not-very-important ceremony info
  - foreign key for venue and rehearsal_venue

Section
  - name
  - Title
  - is_default?
  - is_religious? (e.g. "Opening Prayer")
  - default_previous_section_id
  - conditional display using `field_response`: e.g. `Section.create(name: "Moment of Remembrance", form_hash_url: "z13fw81l0rp9wff", field_api_id: "Field123", field_response: "Yes")`

Element (one for each standard text and each option text and each spouse)
  - name (announcement, secondary spouse declaration of intent)
  - text (includes interpolation)
  - is_default?
  - is_religious?
  - default_previous_element_id
  - default_section_id

SectionElements
  - section_id
  - element_id
  - previous_element_id

InterpolationMap
  - keyword (NAMES_SHUFFLED_RANDOMLY, NOMITIVE)
  - model_as_string (Ceremony, Spouse)
  - attribute_as_string (names_shuffled_randomly, nomitive)

A Ceremony has many Sections, in a specified, re-arrangeable order
  - can use linked list strategy!!
  - A specific ceremony-section join table handles order
  - starts with "default religious" or "default nonreligious"
  - could use a BuilderService / Blueprint style model to create join table records
A Section has many Eelements
  - Elements are static text blocks and text from OptionMaps

Text can be interpolated (needs an InterpolationMap table?)

## Flow
A User should be able to paste in the subject of an email forwarded from Tom and have it:
  - create or update records Spouse, Ceremony, Venue
    - verify the County based on the address
  - create a Google Docs folder if one doesn't exist
  - update the color code of a Google Docs folder (how to indicate which color we want? The type of form?)

  - create a Google Doc with the ceremony text (maybe after some customization?)
    - maybe it just creates one of the defaults and then I can customize it?
    - with an option to generate the Doc when I'm done?

  - create a Google Calendar appointment for the ceremony
  - create a Google Calendar appointment for the rehearsal (if there is one)
  - create a Google Calendar appointment for the reminder email (1 week before)
    - draft the email for me?

## Features
* Create Calendar appointments
* Create Google Docs folder and set color
* Create Google document with ceremony text

* County lookup from address
* Re-order sections/elements
* Add custom sections/elements


`EntryParsingService.parse!("Fwd: Basic Information Form [#1807]")`
