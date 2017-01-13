Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish, hash)
  end
end

When(/^I am on the "([^"]*)" page$/) do |page|
  case page
  when 'landing'
    visit root_path

  when 'Meatballs'
    id = Dish.find_by(name: 'meatballs').id
    visit "/dishes/#{id}"

  when 'Checkout'
    visit checkout_path
  end
end
