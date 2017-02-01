Feature: As a visitor,
  In order to recieve local offers,
  I would like to search for an adress

  Background:
    Given the following dishes exists
    | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
    | meatballs | homecooked with love, including mashed potatoes and sauce | 49    | 18:00      | 10       | 57.699225     |   11.969135   |
    | taco      | really spicy authentic mexican tacos                      | 59    | 16:00      | 10       | 58.166040     |   13.547820   |
    When I am on the "landing" page

  Scenario: User visits landing page and searches for dishes nearby
    When I fill in "Holtermansgatan 1" in the "Address" field
    And I click the "search" button
    Then I should see "Meatballs"
    And I should not see "Taco"
