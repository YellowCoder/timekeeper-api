FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { generate(:email) }
    avatar_source { Faker::Internet.url }
    sso_token { generate(:uid) }
    sso_provider { ['google', 'slack', 'facebook', 'twitter'].sample }
  end
end