Given /^I am on the home page$/ do
  page.driver.header 'Accept-Language', "en"
  visit('/')
end

Given /^I visit "(.*)"$/ do |uri|
  visit(uri)
end

Given /^I have entered "(.*)" into the "(.*)" field$/ do |text, field|
  fill_in field, :with => text
end

Then /^I should see "(.*)"$/ do |text|
  page.should have_content(text)
end

Then /^Debug$/ do
  save_and_open_page
end

Given /^Clicked "(.*)"$/ do |button_text|
  click_button button_text
end

Given /^I send a message "(.*)"$/ do |message_text|
  click_link "Press Enter to send"
  fill_in :message_body, :with => message_text
  find_button('Reply').click
end