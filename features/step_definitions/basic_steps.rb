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
  user = FactoryGirl.create(:user, email: email)
  login_as(user, scope: :user)
end

When(/^I (?:am on|go to) the "([^"]*)" page$/) do |page|
  case page
    when 'landing'
      visit root_path
    when 'Meatballs'
      id = Dish.find_by(name: 'meatballs').id
      visit "/dishes/#{id}"
    when 'Checkout'
      visit checkout_index_path
    when 'Add dish to my dishes'
      visit new_user_dish_path(User.last)
    when 'Edit profile'
      visit edit_user_registration_path
    when 'Profile'
      id = User.find_by(email: 'email@random.com').id
      visit "/users/#{id}"
  end
end

Given(/^that there is a session with lat and lng near "([^"]*)"$/) do |place|
  case place
    when 'Chalmers'
      page.set_rack_session(geo_location: {"lat": 11.97, "lng": 57.71})
    when 'somewhere in America'
      page.set_rack_session(geo_location: {"lat": 35.5332005, "lng": -79.179632})
  end
end
