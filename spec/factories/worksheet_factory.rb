FactoryGirl.define do
  factory :worksheet do
    user
    category
    action { [:start, :stop, :pause].sample }
    description { Faker::Lorem.sentences(1) }
  end
end