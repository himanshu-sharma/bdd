Given (/^wordpress hello world post page URL$/) do
  visit "#{$url}/uncategorized/hello-world/"
end

When(/^I enter first comment "(.*)"$/) do |comments|
	#puts comments
	fill_in('Comment', :with => comments)
end

And(/^I enter first name "(.*)"$/) do |names|
	fill_in('Name', :with => names)
end

And(/^I enter first email "(.*)"$/) do |emails|
	fill_in('Email', :with => emails)
end

And(/^I enter first website "(.*)"$/) do |websites|
	fill_in('Website', :with => websites)
	find_button('Post Comment').click
end

Then(/^I should see expected "(.*)"$/) do |result|
	#save_and_open_page
  	expect(page).to have_content(result)
end