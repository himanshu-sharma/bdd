Given (/^default hello world post page URL$/) do
  visit "#{$url}/uncategorized/hello-world/"
  sleep(60)
end

When(/^I enter comment "(.*)"$/) do |comments|
	#puts comments
	fill_in('Comment', :with => comments)
end

And(/^I enter name "(.*)"$/) do |names|
	fill_in('Name', :with => names)
end

And(/^I enter email "(.*)"$/) do |emails|
	fill_in('Email', :with => emails)
end

And(/^I enter website "(.*)"$/) do |websites|
	fill_in('Website', :with => websites)	
end

And (/^wait for 1 min to$/) do
	sleep(60)
	find_button('Post Comment').click
end

Then(/^I should see "(.*)"$/) do |result|
	#save_and_open_page
  	expect(page).to have_content(result)
end