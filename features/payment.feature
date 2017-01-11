Feature: As a Buying User,
  In order to get my food delivered,
  I need to confirm my order by paying through a payment solution

  As a selling User
  In order to see which of my dishes on offer have been purchased
  I need to see payment confirmation through a payment solution

  Background:
    Given the following dishes exists
      |    name   |                        description                              |  price  | ready_time | portions |
      | meatballs |    homecooked with love, including mashed potatoes and sauce    |    49   |   18:00    |    10    |
      |   taco    |    really spicy authentic mexican tacos                         |    59   |   16:00    |    10    |

    Given the following dishes are in shopping cart
      |    name   |
      | meatballs |
      |   taco    |

  Scenario: Buying User pays for the dishes in her basket
    When I click the "Pay with Card" stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    Then my order should be registered in the system
