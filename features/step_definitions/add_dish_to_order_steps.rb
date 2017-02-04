When(/^I click the "([^"]*)" button for "([^"]*)"$/) do |button, dish|
  scope = Dish.find_by(name: dish)
  within "#dish-#{scope.id}" do
    click_link_or_button button
  end
end

When(/^I click the(?: | plus )button for "([^"]*)"$/) do |dish|
  scope = Dish.find_by(name: dish)
  find("button#dish-#{scope.id}").trigger('click')
end