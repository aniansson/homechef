When(/^I click the "([^"]*)" button for "([^"]*)"$/) do |button, dish|
  scope = Dish.find_by(name: dish)

  within "#dish-#{scope.id}" do
    click_link_or_button button
  end
end