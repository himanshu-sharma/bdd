Feature: Home Page

  Background:
    Given a wordpress home page URL

  @javascript
  Scenario: Home Page Default Features
    When I wait for the page to load
    Then I should see page title "My blog - Just another WordPress site" as page title
    And I should see "Just another WordPress site" in page
    And I should see default post "Hello world!"
    And I should see default post content "Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!"
    And Footer should have "Proudly powered by WordPress" signature