Feature: Main landing page
  As a visitor
  In order to get an overview over the service
  I need to see a main landing page

  Background:
    Given that there is a session with lat and lng near "somewhere in America"

  Scenario: Visitor visits main page
    When I am on the "landing" page
    Then I should see "Welcome to HomeChef"
    When I click the "Home" link
    Then I should be on the "landing" page