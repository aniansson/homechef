@javascript @stripe

Feature:
  As a buying User,
  In order to secure the pickup of my order
  I need to see a summary with location of pickup and pickup time after my payment has been confirmed

  Background:
    Given the following dishes exists
      | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
      | meatballs | homecooked with love, including mashed potatoes and sauce | 10    | 18:00      | 10       | 35.5332005    |  -79.179632   |
      | taco      | really spicy authentic mexican tacos                      | 10    | 16:00      | 10       | 35.5332005    |  -79.179632   |
    And that there is a session with data lng and lat
    And that there is a user logged in with an email of "email@random.com"
    And I am on the "landing" page

  Scenario: User purchases a dish and is being shown pick_up time and order summary at a confirmation page
    When I click the "Add dish" button for "taco"
    And there should be "1" items on the last order
    And I go to the "Checkout" page
    And I click the stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    Then I should see "Thanks, you paid $10.00! Your order: 1 Taco will be ready for pick-up at 16:00" on the order confirmation page

  Scenario: User purchases two dishes with different pick_up time and is being shown pick_up time for both dishes
    When I click the "Add dish" button for "taco"
    And I click the "Add dish" button for "meatballs"
    And I click the "Add dish" button for "meatballs"
    And there should be "2" items on the last order
    And I go to the "Checkout" page
    And I click the stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    Then I should see "Thanks, you paid $30.00! Your order: 1 Taco will be ready for pick-up at 16:00" on the order confirmation page
    And I should see "2 Meatballs will be ready for pick-up at 18:00" on the order confirmation page