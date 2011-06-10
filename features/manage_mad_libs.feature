Feature: Manage mad_libs

  TODO some documentation!

  Scenario: Create a madlib
    Given I am on the home page
    When I fill in the text:
      """
      I (verb, past-tense) the (noun). It was (adjective).
      """
    And I press "Create"
    Then I should see "New Mad Lib created"
    And I should see the following fields:
      | label             |
      | Verb, past-tense: |
      | Noun:             |
      | Adjective:        |

  # Scenario: Delete mad_lib
  #   Given the following mad_libs:
  #     ||
  #     ||
  #     ||
  #     ||
  #     ||
  #   When I delete the 3rd mad_lib
  #   Then I should see the following mad_libs:
  #     ||
  #     ||
  #     ||
  #     ||
