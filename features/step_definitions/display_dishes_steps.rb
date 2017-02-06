Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish, hash, user_id: User.last.id)
  end
end