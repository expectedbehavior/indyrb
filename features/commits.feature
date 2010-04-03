Feature: Showing source commits
  In order to see what has been worked on lately by Indy.rb members
  As a visitor
  I want to see a list of github commits

  @1 @shouldwork @happy_case
  Scenario: Display a list of commits
    Given there is a user named "Indy.rb Test"
    And there is a github user named "indyrbtest"
    And that user belongs to that github user
    When I view the commits page
    Then I should see "test readme"
