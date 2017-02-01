Feature: As a visitor,
  In order to recieve local offers,
  I would like to search for an adress

  Background:
    Given the following dishes exists
    | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
    | meatballs | homecooked with love, including mashed potatoes and sauce | 49    | 18:00      | 10       | 35.5332005    |  -79.179632   |
    | taco      | really spicy authentic mexican tacos                      | 59    | 16:00      | 10       | 40.5332005    |  -74.179632   |
    When I am on the "landing" page

  Scenario: User visits landing page and searches for dishes nearby
    When I input the location "Holtermansgatan 1"
    And press "search" button
    Then I should see "Meatballs"
    And I should not see "Taco"
