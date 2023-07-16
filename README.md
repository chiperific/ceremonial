# README

# Models:

## Wufoo stuff
* Form
* Field

## Wedding stuff
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
* Venue

## Ceremony builder stuff
* Element
  - is_default
  - duplicate_of:references Element



# Features
* County lookup from address
* Re-order sections/elements
* Add custom sections/elements
* Customize language one-off without changing "default" language
