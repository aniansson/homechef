@javascript @stripe

Feature: Add dish to order
  As a buying User,
  In order to purchase a dish
  I need to be able to first add the dish to my order list

  Background:
    Given that the following users exist
      | first_name  | last_name | email               | address        | username |
      | Philip      | Zudemberg | email@random.com    | Address 14     | Philippo |
    And the following dishes exists
      | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
      | meatballs | homecooked with love, including mashed potatoes and sauce |   4   | 18:00      | 10       | 35.5332005    |  -79.179632   |
      | taco      | really spicy authentic mexican tacos                      |   5   | 16:00      | 10       | 35.5332005    |  -79.179632   |
    And that there is a session with lat and lng near "somewhere in America"
    And I am on the "landing" page

  Scenario: Successfully add dish to order
    When I click the plus button for "taco"
    And I click the "Add dish to order" button
    Then I should see "Successfully added to order"
    And "taco" should be added to the last order

  Scenario: Successfully adds two dishes to order
    When I click the plus button for "taco"
    And I click the "Add dish to order" button
    And I click the plus button for "meatballs"
    And I click the "Add dish to order" button
    Then there should be "2" items on the last order


  Scenario: Portions should drop upon purchase
    When I click the plus button for "taco"
    And I click the "Add dish to order" button
    And I click the plus button for "meatballs"
    And I click the "Add dish to order" button
    And I go to the "Checkout" page
    And I click the stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    And I should see "Thank you for your order <3" on the order confirmation page
    And I go to the "landing" page
    And I click the plus button for "meatballs"
    And I should see "9 portions left"
    And I click the plus button for "taco"
    Then I should see "9 portions left"
    And I click the "Close" button