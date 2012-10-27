Feature: Garmr scan
  Background:
    Given an attack "curl" exists
    And scapegoat is running on port 9292
    And an attack "garmr" exists
    And I copy the attack files from the "examples/garmr" folder
    And the following attack files exist:
      | filename      |
      | garmr.attack  |
    When I run `gauntlt`
    Then it should pass with:
      """
      4 steps (4 passed)
      """
    And scapegoat should quit