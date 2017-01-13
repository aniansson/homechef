When(/^I click the stripe button$/) do
  find('.stripe-button-el').trigger('click')
end

When(/^I fill in my card details on the stripe form$/) do
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
  Capybara.within_frame @stripe_iframe do
    fill_in 'Email', with: 'random@morerandom.com'
    fill_in 'Card number', with: '4242 4242 4242 4242'
    fill_in 'CVC', with: '123'
    fill_in 'cc-exp', with: '12/2021'
  end
end

When(/^I submit the stripe form$/) do
    within_frame @stripe_iframe do
      page.execute_script('$("button").click()')
    end
    sleep(1)
end

Then(/^my order should be registered in the system$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^Show me an image of the page$/) do
  sleep(0.1) until page.evaluate_script('$.active') == 0
  Capybara::Screenshot.screenshot_and_open_image
end

Then(/^I should see "([^"]*)" on the order confirmation$/) do |content|
  sleep(4)
  expect(page).to have_content content
end