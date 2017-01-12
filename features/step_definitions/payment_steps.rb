When(/^I click the "([^"]*)" stripe button$/) do |button|
  click_link_or_button button
end

When(/^I fill in my card details on the stripe form$/) do
  sleep(0.1) until page.evaluate_script('$.active') == 0
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
  within_frame @stripe_iframe do
    fill_in 'Email', with: 'random@morerandom.com'
    fill_in 'Card number', with: '4242 4242 4242 4242'
    fill_in 'CVC', with: '123'
    fill_in 'cc-exp', with: '01/2022'
  end
end

When(/^I submit the stripe form$/) do
    within_frame @stripe_iframe do
      click_button "Pay SEK#{@totalamount}"
    end
    sleep(1)
end

Then(/^my order should be registered in the system$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
