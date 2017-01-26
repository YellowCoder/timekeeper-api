FactoryGirl.define do
  factory :authentication do
    uid { generate(:uid) }
    provider { ['google', 'slack', 'facebook', 'twitter'].sample }
  end
end