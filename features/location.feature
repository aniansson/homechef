Feature: As a visitor,
  In order to receive local offers,
  I should see a list of dishes closeby on the landing page

  Background:
    Given the following dishes exists
    | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
    | meatballs | homecooked with love, including mashed potatoes and sauce | 49    | 18:00      | 10       | 11.97    |  57.71  |
    | taco      | really spicy authentic mexican tacos                      | 59    | 16:00      | 10       | 40.5332005    |  -74.179632   |
    And that there is a session with lat and lng near "Chalmers"

  Scenario: User visits landing page and see dishes nearby
    When I am on the "landing" page
    Then I should see "Meatballs"
    And I should not see "Taco"
