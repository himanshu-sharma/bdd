Feature: As a visitor I should see errors when submitting comment form

	Background:
		Given load wordpress post url
		
    @javascript
    Scenario Outline: Submitting incomplete comment form should give errors
    When I enter error comment "<comment>"
    And I enter error name "<name>"
    And I enter error email "<email>"
    And I enter not required website "<website>"
    Then I should see error msg "<result>"

    Examples:
    	| comment | name | email | website | result |
    	|  | him 24 | test24@test.com | www.test24.com | ERROR: please type a comment. |
        | this is anti 25 test |  | test25@test.com | www.test25.com | ERROR: please fill the required fields (name, email). |
        | this is anti 25 test | him 25 |  | www.test25.com | ERROR: please fill the required fields (name, email). |