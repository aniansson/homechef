Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    @dish = FactoryGirl.create(:dish, hash)
  end
  @dish.user = User.find_by(username: "Philippo")
  @dish.save
end