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
    	| this is anti 26 test | him 26 | test26@test.com | www.test26.com | Your comment is awaiting moderation |
        | this is anti 27 test | him 27 | test27@test.com | www.test27.com | You are posting comments too quickly. Slow down. |

    @javascript
    Scenario: Non existing url should show standard error message