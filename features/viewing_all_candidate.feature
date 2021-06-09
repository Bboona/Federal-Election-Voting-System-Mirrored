Feature: Viewing all candidates
  An admin should be able see view all the candidates

  Background: movies in database

    Given the following candidates exist:
      | first_name        | last_name   | associated_party              | state             |
      | Eric              | Abetz       | Liberal Party of Australia    |  Tasmania         |
      | Alex              | Antic       | Liberal Party of Australia    |  South Australia  |
      | Wendy             | Askew       | Liberal Party of Australia    |  Tasmania         |
      | Tim               | Ayres       | Australian Labor Party        |  New South Wales  |

  Scenario: Going to the candidates page
    When I go to the candidates page
    Then I should see "Abetz", "Antic", "Askew" and "Ayres"
