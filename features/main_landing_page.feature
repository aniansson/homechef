Feature: Main landing page
  As a visitor
  In order to get an overview over the service
  I need to see a main landing page

  Background:
    Given that there is a session with data lng and lat

  Scenario: Visitor visits main page
    When I am on the "landing" page
    Then I should see "Welcome to HomeChef"
    And I should see input of type "text" with name "enter_location"
    And I should see a "general_random_dishes" placeholder
    And I should see a "logotype" placeholder
    When I click the "Home" link
    Then I should be on the "landing" page