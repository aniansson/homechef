Given(/^that the following users exist$/) do |table|
  table.hashes.each do |hash|
    @user = FactoryGirl.create(:user, hash)
  end
  login_as(@user, scope: :user)
end
