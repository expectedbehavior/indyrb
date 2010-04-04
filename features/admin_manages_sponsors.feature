Feature: Admin manages sponsors

  Scenario: happy create
    Given an admin
    When I go to the admin sponsors page
    And I follow "New Sponsor"
    And I fill in "sponsor[name]" with "Awesome, Inc."
    And I fill in "sponsor[description]" with "We make awesome."
    And I fill in "sponsor[url]" with "http://awesome.com/"
    And I check "Active"
    # And I attach "awesome_logo.jpg" 
    And I press "Create Sponsor"
    Then I should see "Awesome, Inc. was created"
    And I should see a link labeled "Awesome, Inc."
    # And I should see "We make awesome." within "#sponsors"

  Scenario: bad create

  Scenario: happy update

  Scenario: bad update

  Scenario: destroy
