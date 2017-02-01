Feature: As a visitor,
  In order to recieve local offers,
  I would like to search for an adress

  Background:
    Given the following dishes exists
    | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
    | meatballs | homecooked with love, including mashed potatoes and sauce | 49    | 18:00      | 10       | 35.5332005    |  -79.179632   |
    | taco      | really spicy authentic mexican tacos                      | 59    | 16:00      | 10       | 40.5332005    |  -74.179632   |

  Scenario: User visits landing page and searches for dishes nearby
    When I am on the "landing" page
    Then I should see a "search" 
