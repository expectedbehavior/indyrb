Feature: Logging in
  In order to access the system
  As a user
  I want to login to the system

  @1 @shouldwork @happy_case
  Scenario: Sign up and log into the system
    Given I am on the home page
    When I click "signup"
    And I fill in "Email" with "billy@example.com"
    And I fill in "Password" with "secret"
    And I fill in "Password confirmation" with "secret"
    And I press "Submit"
    Then I should see "User was successfully created."
    When I click "logout"
    Then I should see "What is it?"
    When I click "login"
    And I fill in "Email" with "billy@example.com"
    And I fill in "Password" with "secret"
    And I press "Submit"
    And I should see "Login successful!"

  @shouldwork @happy_case
  Scenario: Login and edit password
