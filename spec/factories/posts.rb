# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    caption 'test'
    user
  end
end
