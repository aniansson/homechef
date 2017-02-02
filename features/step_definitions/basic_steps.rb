Then(/^show me the page$/) do
  save_and_open_page
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in field, with: text
end

And(/^that there is a user logged in with an email of "([^"]*)"$/) do |email|
  FactoryGirl.create(:user, email: email)
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end

Given(/^that there is a session with lat and lng near "([^"]*)"$/) do |place|
case place
when 'Chalmers'
  page.set_rack_session(geo_location: {"lat"=>57.71, "lng"=>11.97})
when 'somewhere in America'
  page.set_rack_session(geo_location: {"lat"=>35.5332005, "lng"=>-79.179632})
end
end
