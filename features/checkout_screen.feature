@javascript

Feature: As a buying User,
  In order to see and edit the dishes in my order,
  I need to manage my order list

  Background:
    Given the following dishes exists
      | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
      | meatballs | homecooked with love, including mashed potatoes and sauce | 4    | 18:00      | 10       | 35.5332005    |  -79.179632   |
      | taco      | really spicy authentic mexican tacos                      | 5    | 16:00      | 10       | 35.5332005    |  -79.179632   |
    And that there is a session with data lng and lat
    And that there is a user logged in with an email of "email@random.com"
    And I am on the "landing" page

  Scenario: Visitor is on main page and has an order
    When I click the "Add dish" button for "taco"
    And I click the "Add dish" button for "meatballs"
    And there should be "2" items on the last order
    And I click "Checkout" button
    Then I should see "Taco"
    And I should see "Price: $5"
    And I should see "Ready for pick-up at 16:00"
    And I should see "Meatballs"
    And I should see "Price: $4"
    And I should see "Ready for pick-up at 18:00"
    And I should see the stripe button
    When I click the "Remove" button for "taco"
    Then I should see "Removed dish from order"
    And I should not see "Taco"

  Scenario: Visitor tries to access checkout page without items in the order
    When I click "Checkout" button
    Then I should see "You have no items in your order"

  Scenario: Visitor removes all items from his basket should be redirected to landing page
    When I click the "Add dish" button for "meatballs"
    And there should be "1" items on the last order
    And I click "Checkout" button
    Then I should see "Meatballs"
    And I should see "Price: $4"
    And I should see "Ready for pick-up at 18:00"
    And I should see the stripe button
    When I click the "Remove" button for "meatballs"
    Then I should be on the "landing" page
    Then I should see "You have no items in your order"
