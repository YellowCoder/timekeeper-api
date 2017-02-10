FactoryGirl.define do
  factory :worksheet do
    user
    action { [:enter, :leave, :pause].sample }
    description { Faker::Lorem.sentences(1) }
  end
end