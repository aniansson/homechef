@javascript @stripe

Feature:
  As a buying User,
  In order to secure the pickup of my order
  I need to see a summary with location of pickup and pickup time after my payment has been confirmed

  Background:
    Given that the following users exist
      | first_name  | last_name | email               | address        | username |
      | Philip      | Zudemberg | email@random.com    | Address 14     | Philippo |
    And the following dishes exists
      | name      | description                                               | price    | ready_time | portions | lat        | lng        |
      | meatballs | homecooked with love, including mashed potatoes and sauce | 10.99    | 18:00      | 10       | 35.5332005 | -79.179632 |
      | taco      | really spicy authentic mexican tacos                      | 12.79    | 16:00      | 10       | 35.5332005 | -79.179632 |
    And that there is a session with lat and lng near "somewhere in America"
    And I am on the "landing" page

  Scenario: User purchases a dish and is being shown pick_up time and order summary at a confirmation page
    When I click the plus button for "taco"
    And I click the "Add dish to order" button
    And there should be "1" items on the last order
    And I go to the "Checkout" page
    And I click the stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    Then I should see "Thank you for your order <3" on the order confirmation page
    And I should see "Taco"
    And I should see "$12.79"
    And I should see " 16:00"

  Scenario: User purchases two dishes with different pick_up time and is being shown pick_up time for both dishes
    When I click the plus button for "taco"
    And I click the "Add dish to order" button
    And I click the plus button for "meatballs"
    And I click the "Add dish to order" button
    And I click the plus button for "meatballs"
    And I click the "Add dish to order" button
    And there should be "2" items on the last order
    And I go to the "Checkout" page
    And I click the stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    Then I should see "Thank you for your order <3" on the order confirmation page
    And I should see "Taco"
    And I should see "$12.79"
    And I should see " 16:00"
    And I should see "Meatballs"
    And I should see "$10.99 2 $21.98"
    And I should see "Total $34.77"