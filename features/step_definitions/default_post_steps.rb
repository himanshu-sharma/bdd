Given (/^a blog home page URL$/) do
  visit $url
end

When(/^I click default "(.*?)" post$/) do |post|
	click_link(post)
end

Then(/^I should redirect to page having title "(.*?)"$/) do |title|
  #save_and_open_page
  #puts page.title
  page.has_title?(title)
end
