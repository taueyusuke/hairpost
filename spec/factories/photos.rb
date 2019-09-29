FactoryBot.define do
  factory :photo do
    image File.open(File.join(Rails.root, 'spec/fixtures/image/images.jpeg'))
    created_at '2016-01-01T00:00:00Z'
    updated_at '2016-01-02T00:00:00Z'
    id '1'
    post_id '1'
  end
end
