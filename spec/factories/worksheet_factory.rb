FactoryGirl.define do
  factory :worksheet do
    user
    action { :enter }
    description { Faker::Lorem.sentences(1) }
  end
end