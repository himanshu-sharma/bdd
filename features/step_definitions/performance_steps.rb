Given (/^load wordpress home page URL$/) do
  visit "#{$url}"
  $visit_time = Time.now
end

When(/^home page is loaded completely$/) do
	page.find_link("Proudly powered by WordPress")
end

Then(/^I should see total time taken within "(.*)" sec$/) do |max_load_time|
	puts Time.now - $visit_time
	if Time.now - $visit_time <= max_load_time.to_i
	    puts true
	else
	    puts fail
	end
	
end