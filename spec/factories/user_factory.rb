FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { generate(:email) }
    sso_token { generate(:uid) }
    sso_provider { ['google', 'slack', 'facebook', 'twitter'].sample }
  end
end