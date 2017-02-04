Feature: As a User
  In order to promote myself and find other people
  I need to be able to display a profile page

  Background:
    Given that there is a user logged in with an email of "email@random.com"
    And the following dishes are created by "email@.random.com"
      | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
      | meatballs | homecooked with love, including mashed potatoes and sauce | 4     | 18:00      | 10       | 35.5332005    |  -79.179632   |
      | taco      | really spicy authentic mexican tacos                      | 5     | 16:00      | 10       | 35.5332005    |  -79.179632   |
    And that there is a session with lat and lng near "Chalmers"

  Scenario: Display of user profile
    When I am on the "Profile" page
    Then I should see "email@random.com"
    And I should see "Philip Zudemberg"
    And I should see "Address 14"
    And I click the button for "taco"
    Then I should see "Taco"
    And I should see "$5"
    And I should see "16:00"
    And I click "Close"
    And I click the button for "meatballs"
    And I should see "Meatballs"
    And I should see "$4"
    And I should see "18:00"
