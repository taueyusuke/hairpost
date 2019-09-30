require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user_a) { FactoryBot.create(:user, name: 'test', email: 'a@exmple.com', password: 'password') }
  let(:post) { FactoryBot.create(:post) }
    it 'captionが有効な状態' do
      user = user_a
      post = user.posts.build(
          caption: 'testcaption'
      )
      expect(post).to be_valid
    end

  it 'captionが空白だと無効な状態' do
    user = user_a
    post = user.posts.create(
        caption: ' ',
        )
    expect(post).to_not be_valid
  end
end
