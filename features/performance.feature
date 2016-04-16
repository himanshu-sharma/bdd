Feature: As a visitor I should able to see home page within 2 sec max

	Background:
		Given load wordpress home page URL
		
    @javascript
    Scenario: Page should load within 2 sec
    When home page is loaded completely
    Then I should see total time taken within "2" sec