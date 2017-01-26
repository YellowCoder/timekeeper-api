FactoryGirl.define do
  sequence :uid do |n|
    "#{n}#{Faker::Internet.password(10, 20, true)}"
  end

  sequence :email do |n|
    Faker::Internet.email(n.to_s)
  end
end