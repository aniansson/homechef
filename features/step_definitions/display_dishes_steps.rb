Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish, hash)
  end
end


And(/^the following dishes are created by "([^"]*)"$/) do |email, table|
  user = User.find_by(email: email)
  table.hashes.each do |hash|
    FactoryGirl.create(:dish, hash, user: user)
  end
end