Feature: Sign Up
  As a visitor,
  In order to buy and sell tasty food,
  I need to be able to get system access by creating an account

  Background:
    Given that there is a session with data lng and lat

  Scenario: Successfully Signed Up
    When I am on the "landing" page
    And I click the "Sign up" link
    When I fill in "user@example.com" in the "Email" field
    And I fill in "password" in the "Password" field
    And I fill in "password" in the "Password confirmation" field
    And I click the "Sign up" button
    Then I should be on the "landing" page
    And I should see "Welcome! You have signed up successfully."