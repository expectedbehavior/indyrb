Feature: Import Indy.rb Member Blog Posts
  In order to show blog posts from members blogs
  As a person who cares about Indy.rb
  I want to import blog posts and show them

  @gordwip
  Scenario: Add a new feed
    Given I am logged in as an admin
    And I am on the "Add Feed" page
    When I fill in "Feed Name" with "Miles' Tumblr"
    And I fill in "Feed URI" with "http://mileszs.tumblr.com/rss"
    And I press submit
    Then I should see "Feed Added!"
    When I go to the "Blog" page
    Then I should see the first post from "Miles' Tumblr"
