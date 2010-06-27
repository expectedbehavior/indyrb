Feature: Showing source commits
  In order to see what has been worked on lately by Indy.rb members
  As a visitor
  I want to see a list of github commits

  @1 @shouldwork @happy_case
  Scenario: Display a list of commits
    Given there is a user named "Indy.rb Test"
    And the users github username is "indyrbtest"
    When I view the commits page
    Then I should see "test readme"

  @shouldwork @happy_case
  Scenario: Edit github username and check list of commits
    Given I am on the home page
    When I click "signup"
    And I fill in "Email" with "billy@example.com"
    And I fill in "Password" with "secret"
    And I fill in "Password confirmation" with "secret"
    And I press "Submit"
    And I view the commits page
    Then I should not see "test readme"
    When I click "edit profile"
    And I fill in "Github username" with "indyrbtest"
    And I press "Submit"
    Then I should see "User was successfully updated."
    When I view the commits page
    Then I should see "test readme"
