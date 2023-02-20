Feature: Integer Arithmetic Expressions
  Background:
    Given I initialise a calculator

  Scenario Outline: Printing all the operation of two integer numbers
    Given an integer operation <n0>
    When I provide a first number <n1>
    And I provide a second number <n2>
    Then its INFIX notation is <n3>
    And its PREFIX notation is <n4>
    And its POSTFIX notation is <n5>

    Examples:
      |n0|n1|n2|n3|n4|n5|
      |"+"|8|6|( 8 + 6 )|+ (8, 6)|(8, 6) +|
      |"-"|8|6|( 8 - 6 )|- (8, 6)|(8, 6) -|
      |"*"|8|6|( 8 * 6 )|* (8, 6)|(8, 6) *|
      |"/"|8|6|( 8 / 6 )|/ (8, 6)|(8, 6) /|