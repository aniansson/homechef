# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dish.destroy_all
User.destroy_all
user = FactoryGirl.create(:user)
10.times do
  FactoryGirl.create(:dish)
end

# Create dishes in America for testing on localhost
3.times do
  FactoryGirl.create(:dish, name: 'Dish in America', lat: 35.53, lng: -79.17)
end
