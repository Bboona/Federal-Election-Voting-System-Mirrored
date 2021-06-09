Feature: Option to vote above and below the line
  A user should be able to vote above and below the line

  Background: movies in database

    Given the following candidates exist:
      | first_name        | last_name   | associated_party              | state             |
      | Eric              | Abetz       | Liberal Party of Australia    |  Tasmania         |

    Given the following votes exist:
      | preference     | candidateID | ballotID     |
      | 1              | 1           | 0            |

  Scenario: Below and above the line options are displayed
    When I go to the voting page
    Then I should see both options for "Above the line" and "Below the line"