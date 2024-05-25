# railsinventory

## Goal
The **primary goal** of this project is for me to explore migrations (schema and data) as the data model expands via an agile development process.

Secondary goals are related to exploring how best to integrate "professional" software engineering practices in a techstack that I am not an expert in. Such as
* testing practices
   * Getting familiar with rspec
   * how to end-to-end test user stories
* metrics and static analysis

A big part of the motiviation here is to explore phase changes in complexity as they impact Rails apps. Examples of that include:
* schema and data migrations
* introduction of (REST) API
* Migration to SOA
* intration with event-based systems

As a motivating test case, this project represents an exploration of an inventory tracking system. Specifically, a system where item owners are entrusting high-value items to the care/storage of the staff at a facility. 

Potential example usecases:
* Doggy daycare
* childcare/school attendance
* wine storage

see the [tentative project plan](./PROJECT_PLAN.md) for more details.

## Data model (asperationalt)
* Accounts - represent that there is someone/thing paying to track things their responsible for
* Facilities - an account might have multiple top-level places where inventory is kept
* spaces - inside a facility there are different places to go look for inventory items
* items - atomic inventory items
* Users - people that interact with the system
   * Account managers/owners 
      * manage their facilities
   * facility staff
      * recieve items
      * move items between spaces
      * get reports on pending and satisfied reservations
   * item owners 
      * drop off items
      * request items
      * get updates on items
* movements of items - items move in and out of facilities and spaces
   * when owners check them in/out
   * when facility staff relocate them between spaces
* reservations - facilities might want to reserve capacity for items
* scheduled movements - related to a reservation

