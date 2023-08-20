# README

## NEXT STEPS
1. Use several Entries to create Venue, Spouse, and Ceremony records
  - will help clarify EntryMap

1. Create seeds for Section and Element records

1. Create seeds for OptionMap records

1. Create a Builder Service and Blueprints for the default religious and nonreligious ceremonies

1. Decide how to handle ceremony building on-demand

1. Google integration:
  - Create Google Docs folder and set color
  - Create Google document with ceremony text
  - Create Calendar appointments & reminders

## Wufoo stuff
* Form
* Field
* Entry (in-memory only?)


* EntryMap (maps the field_api_id to the Model & attribute to store it in)
  - field_api_id
  - model
  - attribute

* OptionMap (translates an entry's value to the actual text to generate)
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

Section
  - name
  - Title
  - is_default?
  - is_religious? (e.g. "Opening Prayer")
  - default_previous_section_id

CeremonySections
  - ceremony_id
  - section_id
  - previous_section_id

Element (same as OptionMap??)
  - name
  - title
  - text
  - is_default?
  - is_religious?
  - default_previous_element_id
  - default_section_id
  - has_nonreligious_variant?
  - nonreligious_variant (another element_id)

SectionElements
  - section_id
  - element_id
  - previous_element_id


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
