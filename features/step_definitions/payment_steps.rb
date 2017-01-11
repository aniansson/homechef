Given(/^the following dishes are in shopping cart$/) do |table|
  table.hashes.each do |hash|
    dish = Dish.find_by(name: hash[:name])
    cart = FactoryGirl.create(:shopping_cart)
    cart.add(dish, dish.price)
  end
end

When(/^I click the "([^"]*)" stripe button$/) do |button|
  click_link_or_button button
end

When(/^I fill in my card details on the stripe form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I submit the stripe form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^my order should be registered in the system$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
