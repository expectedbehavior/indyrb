Feature: Featured Projects
  In order to learn about the current featured project
  As a visitor
  I want to see the featured project box and info

  @1 @shouldwork @happy_case @wip
  Scenario: Create and view featured project
    Given there is a user named "Indy.rb Test"
    And that user has "admin" set to "true"
    And I am logged in
    When I view the admin featured projects page
    And I click "New featured project"
    And I fill in "name" with "best project EVAR"
    And I fill in "description" with "srsly"
    And I press "Submit"
    Then I should see "best project EVAR"
    And I should see "srsly"
    When I view the admin featured projects page
    Then I should see "best project EVAR"
    And I should see "srsly"
    When I view the featured projects page
    Then I should see "best project EVAR"
    And I should see "srsly"
