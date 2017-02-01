When(/^I fill in "([^"]*)" in the "([^"]*)" field$/) do |value, field|
  fill_in field, with: value
end

And(/^I click the "([^"]*)" button$/) do |button|
  click_button button
end
