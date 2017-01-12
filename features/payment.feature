@javascript

Feature: As a Buying User,
  In order to get my food delivered,
  I need to confirm my order by paying through a payment solution

  As a selling User
  In order to see which of my dishes on offer have been purchased
  I need to see payment confirmation through a payment solution

  Scenario: Buying User pays for the dishes in her basket
    When I am on the "Checkout" page
    And I click the stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    Then I should see "Thanks, you paid $5.49!" on the order confirmation
