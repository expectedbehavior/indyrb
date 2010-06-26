Feature: Import Indy.rb Member Blog Posts
  In order to show blog posts from members blogs
  As a person who cares about Indy.rb
  I want to import blog posts and show them

  @gordwip
  Scenario: Add a new feed
    Given there is a user named "Captain Admin"
    And that User has "admin" set to "true"
    And I am logged in
    When I go to the add feed page
    And I click "New feed"
    When I fill in "feed title" with "Miles' Tumblr"
    And I fill in "Feed URI" with "http://mileszs.tumblr.com/rss"
    And I press "Create Feed"
    Then I should see "Feed was successfully created"
    When I go to the blog page
    Then I should see the first post from "Miles' Tumblr"
