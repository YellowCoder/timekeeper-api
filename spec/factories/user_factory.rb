FactoryGirl.define do
  factory :user do
    timezone { 'America/Sao_Paulo' }
    email { Faker::Internet.email }
    password { Faker::Internet.password(6) }
    password_confirmation { password }
    jwt_token { generate(:jwt_token) }
  end
end
