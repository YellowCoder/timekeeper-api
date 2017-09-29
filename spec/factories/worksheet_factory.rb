FactoryGirl.define do
  factory :worksheet do
    user
    category
    action { [:enter, :leave, :pause].sample }
    description { Faker::Lorem.sentences(1) }
  end
end