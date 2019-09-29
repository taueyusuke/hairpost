require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user_a) { FactoryBot.create(:user, name: 'test', email: 'a@exmple.com', password: 'password') }
    it 'captionが有効な状態' do
      user = user_a
      post = user.posts.create(
          caption: 'testcaption',
      )
      expect(post).to be_valid
    end

    it 'captionがなければ無効' do
      post = Post.create(caption: nil)
      post.valid?
      expect(post.errors[:caption]).to include("can't be blank")
    end
end
