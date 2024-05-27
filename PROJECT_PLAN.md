# a project plan

## "Product" Roadmap
### MVP
lets assume that the initial goal is to support a sole-proprietor pet sitter.
* the sitter should be able to 
   * register their account
   * describe their facility (num dogs, ???)
* dog owners should
   * be able to describe their dog
   * be able to find facilities
   * register with a facility
   * drop off a dog
   * pick up a dog

### Multiple Staff at facility
The next step could be to support allowing staff at the day-care facility
* staff:
   * can see facilities they work at

### multiple spaces at facility
for example, there could be two big play rooms (small dogs, and big dogs) and several crates suited to isolating dogs and overnight boarding.
* spaces:
   * have capacity?
   * have descriptions

### Item status updates/history
allow staff to provide updates on items and owners to see them

## "Project" Roadmap
1. pre-MVP
   1. [x] allow item owners to create and see their items
   1. [ ] introduce auth
   1. [ ] only an owner can see their items
   1. [ ] allow account owners to create and see their facilities
   1. [ ] move to postgres for dev
1. [ ] fairly minimal product
   - [ ] drop off item (account-owner action)
   - [ ] pick up item (account-owner action)
1. [ ] initial testing capability
   - [ ] rspec tests? 
   - [ ] coverage report?
1. [ ] next traunche of capabilities
   - [ ] item descriptions?
   - [ ] item types
      - [ ] facilities can handle types
   - [ ] multiple staff
1. [ ] Some kind of end-to-end testing
   - [ ] selenium?
   - [ ] locust tests?
1. [ ] introduce an API
   - [ ] JWT
   - [ ] locust test scenario:
      - [ ] several staff:
         - [ ] relocating items
         - [ ] dropping off and picking up
      - [ ] item owners:
         - [ ] requesting status updates

## 
