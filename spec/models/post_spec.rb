require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user_a) { FactoryBot.create(:user, name: 'test', email: 'a@exmple.com', password: 'password') }
    it '記事のタイトル、本文、user_id、game_idが有効であること' do
      user = user_a
      post = user.posts.create(
          caption: 'テストタイトル',
      )
      expect(post).to be_valid
    end
end
