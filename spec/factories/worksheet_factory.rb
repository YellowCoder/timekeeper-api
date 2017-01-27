FactoryGirl.define do
  factory :worksheet do
    user
    type { :enter }
    description { Faker::Lorem.sentences(1) }
  end
end