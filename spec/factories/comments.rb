# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    id '1'
    comment 'test'
    post_id '1'
    user_id '1'
    created_at '2019-09-30 04:18:45'
    updated_at '2019-09-30 04:18:45'
  end
end
