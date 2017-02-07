FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    uuid { generate(:uid) }
    provider { %w(google facebook).sample }
  end
end
