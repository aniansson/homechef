Feature: Add dish to order
  As a buying User,
  In order to purchase a dish
  I need to be able to first add the dish to my order list

  Background:
    Given the following dishes exists
      | name      | description                                               | price | ready_time | portions |
      | meatballs | homecooked with love, including mashed potatoes and sauce | 49    | 18:00      | 10       |
      | taco      | really spicy authentic mexican tacos                      | 59    | 16:00      | 10       |

  Scenario: Successfully add dish to order
    When I am on the "landing" page
    And I click the "Add dish" button for "taco"
    Then I should see "Successfully added to order"
    And "taco" should be added to the last order

  Scenario: Successfully adds two dishes to order
    When I am on the "landing" page
    And I click the "Add dish" button for "taco"
    And I click the "Add dish" button for "meatballs"
    And there should be "2" items on the last order