FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { generate(:email) }
  end
end