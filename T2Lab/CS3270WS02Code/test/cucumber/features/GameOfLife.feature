Feature: Game of Life

Title: Student plays the Game of Life

  Scenario: Set a cell
    Given a grid with 3 rows and 3 columns
    When the cell at 2, 2 is set alive
    Then the cell at 2, 2 should be alive

  Scenario: Kill a loner
    Given a grid with 3 rows and 3 columns
    And the cell at 2, 2 is set alive
    When the cells are mutated
    Then all the cells should be dead

  Scenario: Still life with the block
    Given a grid with 4 rows and 4 columns
    And the cell at 1, 1 is set alive
    And the cell at 1, 2 is set alive
    And the cell at 2, 1 is set alive
    And the cell at 2, 2 is set alive
    When the cells are mutated
    Then the cell at 1, 1 should be alive
    Then the cell at 1, 2 should be alive
    Then the cell at 2, 1 should be alive
    Then the cell at 2, 2 should be alive
