Feature: As a visitor I should able to Submit Comment

	Background:
		Given default hello world post page URL
		
    @javascript
    Scenario Outline: Submit comment form    
    When I enter comment "<comment>"
    And I enter name "<name>"
    And I enter email "<email>"
    And I enter website "<website>"
    And wait for 1 min to
    Then I should see "<result>"

    Examples:
    	| comment | name | email | website | result |
    	| this is 35 test | him 1 | test1@test.com | www.test.com | Your comment is awaiting moderation |
        | this is 35 test | him 1 | test1@test.com | www.test.com | Duplicate comment detected; it looks as though you’ve already said that! |