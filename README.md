# README

## Ceremonial ##
_Wedding planning software for the strong-willed old dog_

### Basic tasks: ###
* Replace all Wufoo forms with a single system that combines all form data into "client" and "ceremony" records
* Allow for clients (and officiants) to build and edit their own ceremony(s):
  - Automatically adjust default ceremony format based upon religious/spiritual preferences
  - Allow ceremony elements to be re-arranged, edited, added, or removed
  - Allow pre-written ceremony elements to be customized and edited
* Upload marriage license pictures, photos of each couple, proof of payment, and other important forms/documents
* Officiant bio pages with contact info (Calendly link)
* Administrators create and edit pre-written ceremony elements
* Administrators set the default ceremony format
* Administrators create Officiant accounts
* Clients start to create their own accounts when completing a "check date request",
* After paying their deposit, Administrator "books" their ceremony
* A "booked" ceremony allows clients to set a password so they can create / edit their ceremony form
* Clients can request help on specific elements of the ceremony, which notifies Administrators or Officiants
* Officiants can view/tweak ceremonies they have been assigned to
* Creating a ceremony is done "live", so two users on two separate computers will see changes simultaneously (allows for live edits to be made while talking to the clients on a phone or video call)
* Allow Officiants to print a "cheat sheet" or "full script" version of the ceremony:
  - cheat sheet: list element selections, note customizations
  - full script: word-for-word print out


### Advanced, possible features: ###
* Track clients from "check date / request" phase through survey and reviews
* Create a single portal for clients to pay for services, with invoicing and a ledger system (probably using Stripe):
  - Officiants could be paid directly by creating an account, similar to Calendly
* Send emails to couples via the system, receive emails from the couple that get recorded in the system
* A shared "log" of activites for each client documenting contacts, instructions, decisions, etc.
* Officiant scheduling system (either via email or sms)



#### Developer notes ####
* Google Tasks or Calendar API? For setting tasks, deadlines, ceremony dates, rehearsal dates
* SMS integration: SMSEasy https://github.com/preston/sms-easy
* Stripe integration for payment processing
* Mailgun for send/receive https://guides.rubyonrails.org/action_mailbox_basics.html
* OAuth2: WeddingWire uses Google, Facebook, Apple
* Ceremony.assist_contact needs to be a foreign key to either Administrator or Officiant
* Use Rails 7 Hotwire for live creation of ceremonies
* Vanity name ceremonies in URLs instead of using IDs? Or just use separate route for clients: (e.g. 'ceremonies/my'), as long as the broadcast is set up correctly.
* Export the ceremony HTML to Word, GDoc, Pages, PDF
