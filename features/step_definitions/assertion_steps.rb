Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

Then(/^I should see input of type "([^"]*)" with name "([^"]*)"$/) do |type, name|
  expect(page).to have_css('input[type=' "#{type}" '][name*=' "#{name}" ']')
end

Then(/^I should be on the "landing page$/) do
  expect(page.current_path).to eq root_path
end

Then(/^"([^"]*)" should be added to the last order$/) do |dish_name|
  order = Order.last
  expect(order.shopping_cart_items.last.item.name).to eq dish_name
end

Then(/^there should be "([^"]*)" items on the last order$/) do |count|
  order = Order.last
  expect(order.shopping_cart_items.count).to eq count.to_i
end

Then(/^I should see the stripe button$/) do
  expect(page).to have_css '.stripe-button-el'
end

Then(/^I should see "([^"]*)" on the order confirmation page$/) do |content|
  expect(page).to have_content content
end

Then(/^I should be on the "([^"]*)" page$/) do |current_page|
  if current_page == "landing"
    expect(page.current_path).to eq root_path
  elsif current_page == "Sign up"
    expect(page.current_path).to eq new_user_registration_path
  end
end

Then(/^"([^"]*)" should have name "([^"]*)"$/) do |email, name|
  user=User.find_by(email: email)
  expect(user.first_name).to eq name
end