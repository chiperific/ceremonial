# Ceremonial #
_Wedding planning software for the strong-willed old dog_

### _Work In Progress_ ###
_This app is a work in progress / proposal. Developers: nothing to fork here yet, it's an empty Rails 7 app. Move along._

The system will perform or allow for the features listed below:

## Basic tasks: ##
_Easy to do, probably worth doing, doesn't change much of "the process"_
_More convenience for the clients, a good shared "portal" for everyone_

* Replace all Wufoo forms with a single system that combines all form data into "client" and "ceremony" records

* Allow for clients (and officiants) to build and edit their own ceremony(s):
  - Automatically adjust default ceremony format based upon religious/spiritual preferences
  - Allow ceremony elements to be re-arranged, edited, added, or removed
  - Allow pre-written ceremony elements to be customized and edited
  - Clients can request help on specific elements of the ceremony, which notifies Administrators or Officiants

* Upload marriage license pictures, photos of each couple, proof of payment, and other important forms/documents

* Officiant bio pages with contact info (Calendly link)

* Administrators create and edit pre-written ceremony elements
* Administrators set the default ceremony format
* Administrators create Officiant accounts

* Client Accounts:
  - Clients start to create their own accounts when completing a "check date request",
  - After paying their deposit, Administrator "books" their ceremony
  - A "booked" ceremony allows clients to set a password so they can create / edit their ceremony form

* Officiants can view/tweak ceremonies they have been assigned to

* Creating a ceremony is done "live", so two users on two separate computers will see changes simultaneously (allows for live edits to be made while talking to the clients on a phone or video call)

* Allow Officiants to print a "cheat sheet" or "full script" version of the ceremony:
  - cheat sheet: list element selections, note customizations
  - full script: word-for-word print out

* Emails the clients to request the feedback survey after the ceremony is complete
  - Feedback surveys only visible to Administrators, unless Admin shares it with the Officiant


## Advanced, possible features: ##
_(really new tricks for a poor old dog, might not be worth it)_

* Track clients from "check date / request" phase through survey and reviews
  - Allows for pages that list clients by "phase", showing which are in the pipeline, which are all set, which need nudging, which have completed their ceremony, which have contacted their officiant, etc.
  - Allows clients to see a "progress bar" for their particular ceremony (pay deposit, meet officiant, develop ceremony, pay final balance, write review, submit survey...)

* Communial Adminstrator & Officiant calendar sharing, so Admin could look for conflicts on Officiant calendars or Officiants could block of certain times.

* Send emails to couples via the system, receive emails from the couple that get recorded in the system
  - Allows for a kind of "communcation log" format, where interactions with couples are tracked automatically and manually

* Create a single portal for clients to pay for services, with invoicing and a ledger system (probably using Stripe):
  - Officiants could be paid directly by creating an account, similar to Calendly

* A shared "log" of activites for each client documenting contacts, instructions, decisions, etc.
  - some log entries are automatic (e.g. when a client makes a payment)
  - some log entries are manual (e.g. leaving a note after a phone call or email with the couple)

* Officiant scheduling system (either via email or sms)
  - Administrator selects a ranked list of officiants to be offered the date
  - System texts each officiant in ranked order. If officiant accepts, system "books" officiant, if they decline, system texts next officiant (will need a time limit, e.g. 6 hours)



#### Developer notes ####
_don't read this if your name is Tom_
* Google Tasks or Calendar API? For setting tasks, deadlines, ceremony dates, rehearsal dates
* SMS integration: SMSEasy https://github.com/preston/sms-easy
* Stripe integration for payment processing
* Mailgun for send/receive https://guides.rubyonrails.org/action_mailbox_basics.html
* OAuth2: WeddingWire uses Google, Facebook, Apple
* Ceremony.assist_contact needs to be a foreign key to either Administrator or Officiant
* Use Rails 7 Hotwire for live creation of ceremonies
* Vanity name ceremonies in URLs instead of using IDs? Or just use separate route for clients: (e.g. 'ceremonies/my'), as long as the broadcast is set up correctly.
* Export the ceremony HTML to Word, GDoc, Pages, PDF
