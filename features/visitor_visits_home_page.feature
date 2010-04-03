Feature: Visitor visits home page

  Scenario: basic
    When I go to the home page
    Then I should see the page title "Indy.rb"
    And I should see an image of "/images/indyrb_logo.png"
    And I should see "What is it?"
    And I should see "When and Where?"
    And I should see "How to find us"
    And I should see the sponsors
    And I should see the next meeting
