Feature: Check stock
  Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Butter" with price 10.00 and stock of 15 exists


  Scenario: Selling a product with insufficient stock
    When I try to sell 5 units of "Butter"
    Then an error should be thrown with the message "Insufficient stock for product: Butter"

#  Scenario: Selling a product that does not exist in stock
#    Given the product "Orange" does not exist in stock
#    When I try to sell 2 units of "Orange"
#    Then an error should be thrown with the message "Product not found in stock!"
