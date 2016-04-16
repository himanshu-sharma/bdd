Given (/^load wordpress post url$/) do
  visit "#{$url}/uncategorized/hello-world/"
end

When(/^I enter error comment "(.*)"$/) do |comments|
	fill_in('Comment', :with => comments)
end

And(/^I enter error name "(.*)"$/) do |names|
	fill_in('Name', :with => names)
end

And(/^I enter error email "(.*)"$/) do |emails|
	fill_in('Email', :with => emails)
end

And(/^I enter not required website "(.*)"$/) do |websites|
	fill_in('Website', :with => websites)
	find_button('Post Comment').click
end

Then(/^I should see error msg "(.*)"$/) do |result|
	#save_and_open_page
  	expect(page).to have_content(result)
end