Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see input of type "([^"]*)" with name "([^"]*)"$/) do |type, name|
  expect(page).to have_css('input[type='"#{type}"'][name*='"#{name}"']')
end

Then(/^I should see a "([^"]*)" placeholder$/) do |id|
  expect(page).to have_selector(:css, "div##{id}")
end

Then(/^I should be on the main landing page$/) do
  visit root_path
end

And(/^"([^"]*)" should be added to the last order$/) do |dish_name|
	order = Order.last
	expect(order.shopping_cart_items.last.item.name).to eq dish_name
end

And(/^there should be "([^"]*)" items on the last order$/) do |count|
  order = Order.last
  expect(order.shopping_cart_items.count).to eq count.to_i
end