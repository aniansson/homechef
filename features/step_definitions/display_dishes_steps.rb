Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    @dish = FactoryGirl.create(:dish, hash)
  end
  user = User.find_by(username: "Philippo")
  @dish.update(user: user)
end