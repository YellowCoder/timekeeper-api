FactoryGirl.define do
  sequence :jwt_token do |n|
    "#{Faker::Internet.password(20)}#{n}"
  end
end