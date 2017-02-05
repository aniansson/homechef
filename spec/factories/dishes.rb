FactoryGirl.define do
  factory :dish do
    name "Pizza"
    description "Food for your soul"
    price 1
    ready_time "2017-01-10 16:32:43"
    portions 1
    user { User.create(email: "email@someplace.es", password: "123456", password_confirmation: "123456") }
    lat 57.68
    lng 11.98
  end
end
