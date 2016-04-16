Given (/^a wordpress home page URL$/) do
  visit $url
end

When(/^I wait for the page to load$/) do 
end

Then(/^I should see page title "(.*?)" as page title$/) do |title|
  page.has_title? title
end

Then(/^I should see "(.*?)" in page$/) do |site_desc|
  page.has_content? site_desc
end

Then(/^I should see default post "(.*?)"$/) do |default_post_title|
  page.has_content? default_post_title
end

Then(/^I should see default post content "(.*?)"$/) do |default_post_content|
  page.has_content? default_post_content
end

Then(/^Footer should have "(.*?)" signature$/) do |default_wp_footer|
  page.has_content? default_wp_footer
end