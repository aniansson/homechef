Feature: As a User
  In order to promote myself and find other people
  I need to be able to display a profile page

  Background:
    Given that there is a user logged in with an email of "email@random.com"
    And that there is a session with lat and lng near "Chalmers"

  Scenario: Display of user profile
    When I am on the "Profile" page
    And show me the page
    Then I should see "Meatballs"
    And I can click on "Meatballs"
    And I should see "User"
    And I should see "Name"
    And I should see "Address"
