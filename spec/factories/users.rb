FactoryBot.define do
  factory :user do
    name "testuser"
    sequence(:email) { |n| "tester#{n}@example.com" }
    password "password"
  end
end
