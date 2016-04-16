Feature: Default Post at Home Page

	Background:
		Given a blog home page URL

	@javascript
	Scenario: passing background
		When I click default "Hello world!" post
		Then I should redirect to page having title "Hello world! – My blog"