Feature: Viewing results of the voting system
  An admin should be able see the results of the voting system

  Background: movies in database

    Given the following candidates exist:
      | first_name        | last_name   | associated_party              | state             |
      | Eric              | Abetz       | Liberal Party of Australia    |  Tasmania         |

    Given the following votes exist:
      | preference     | candidateID | ballotID     |
      | 1              | 1           | 0            |

  Scenario: Looking at the results page
    When I go to the results page
    Then I should see "Abetz" having "1" vote at preference "1"