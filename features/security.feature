Feature: As a visitor I should able to Submit Comment

	Background:
		Given wordpress hello world post page URL
		
    @javascript
    Scenario Outline: Anti spaming of comments
    When I enter first comment "<comment>"
    And I enter first name "<name>"
    And I enter first email "<email>"
    And I enter first website "<website>"
    Then I should see expected "<result>"

    Examples:
    	| comment | name | email | website | result |
    	| this is anti 24 test | him 24 | test24@test.com | www.test24.com | Your comment is awaiting moderation |
        | this is anti 25 test | him 25 | test25@test.com | www.test25.com | You are posting comments too quickly. Slow down. |

    @javascript
    Scenario: Non existing url should show standard error message