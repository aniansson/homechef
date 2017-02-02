Feature: As a visitor,
  In order to see example of dishes available in general,
  I need to be able to see a selection of dishes

  Background:
    Given the following dishes exists
      | name      | description                                               | price | ready_time | portions |    lat        |     lng       |
      | meatballs | homecooked with love, including mashed potatoes and sauce | 4    | 18:00      | 10       | 35.5332005    |  -79.179632   |
      | taco      | really spicy authentic mexican tacos                      | 5    | 16:00      | 10       | 35.5332005    |  -79.179632   |
    And that there is a session with lat and lng near "somewhere in America"

  Scenario: Visitor is on main page and sees dishes
    When I am on the "landing" page
    Then I should see "Meatballs"
    And I should see "Homecooked with love, including mashed potatoes and sauce"
    And I should see "Price: $4"
    And I should see "Ready for pick-up at 18:00"
    And I should see "10 portions left"
    Then I should see "Taco"
    And I should see "Really spicy authentic mexican tacos"
    And I should see "Price: $5"
    And I should see "Ready for pick-up at 16:00"
    And I should see "10 portions left"

  Scenario: Visitor visits URL for certain dish
    When I am on the "Meatballs" page
    Then I should see "Meatballs"
    And I should see "Homecooked with love, including mashed potatoes and sauce"
    And I should see "Price: $4"
    And I should see "Ready for pick-up at 18:00"
    And I should see "10 portions left"
