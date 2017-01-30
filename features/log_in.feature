Feature: Login
  As a user
  In order to buy and sell food
  I need to log in with my account

  Background:
    Given that there is a user with email: "kristoffer.user@homechef.com"
    And that there is a session with data lng and lat

  Scenario: A user logs in
    When I am on the "landing" page
    And I click "Login"
    Then I fill in "Email" with "kristoffer.user@homechef.com"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I should be on the "Landing" page
    And I should see "Signed in successfully."

