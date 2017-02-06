@javascript

Feature: As a User
  In order to promote myself and find other people
  I need to be able to display a profile page

  Background:
    Given that the following users exist
      | first_name  | last_name | email               | address        |
      | Philip      | Zudemberg | email@random.com    | Address 14     |
    And that there is a session with lat and lng near "Chalmers"

  Scenario: Display of user profile
    When I am on the "landing" page
    And I click "Add dish"
    And I fill in "Dish name" with "Meatballs"
    And I fill in "Dish description" with "This are like your Swedish mom's homemade meatballs"
    And I fill in "Price" with "59.99"
    And I fill in "Nr of portions available" with "5"
    And I fill in "Earliest pickup time" with "2017-02-17 18:00"
    And I fill in "Pickup address" with "Storgatan 1, Stockholm"
    And I click "Create dish"
    And I should see "Successfully added 5 portions of Meatballs at $59.99 each to your dishes"
    And I click "My profile"
    Then I should see "email@random.com"
    And I should see "Philip Zudemberg"
    And I should see "Address 14"
    And I click the button for "Meatballs"
    And I should see "Meatballs"
    And I should see "$59.99"
    And I should see "18:00"
