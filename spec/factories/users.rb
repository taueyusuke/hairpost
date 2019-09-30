FactoryBot.define do
  factory :user do
    name "testuser"
    sequence(:email) { |n| "testuser#{n}@test.com" }
    password "password"
  end
end
