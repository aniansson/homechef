@javascript

Feature: As a User
  In order to promote myself and find other people
  I need to be able to display a profile page

  Background:
    Given that the following users exist
      | first_name | last_name | email            | address    | username |
      | Philip     | Zudemberg | email@random.com | Address 14 | Philippo |
    Given the following dishes exists
      | name      | description                                               | price | ready_time | portions | lat        | lng        |
      | meatballs | homecooked with love, including mashed potatoes and sauce | 59.99 | 18:00      | 10       | 35.5332005 | -79.179632 |
    And that there is a session with lat and lng near "somewhere in America"
    And I am on the "landing" page

  Scenario: Display of user profile
    When I click "My profile"
    And I should see "email@random.com"
    And I should see "Philip Zudemberg"
    And I should see "Address 14"
    And I click the button for "meatballs"
    And I should see "Meatballs"
    And I should see "$59.99"
    And I should see "18:00"
