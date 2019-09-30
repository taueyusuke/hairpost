# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:other_user) { FactoryBot.create(:user) }
  describe 'validation' do
    it '有効なfactoryを持つ' do
      expect(FactoryBot.build(:user)).to be_valid
    end

    it 'userが存在しない場合無効であること' do
      user.name = ''
      expect(user).to_not be_valid
    end

    it 'emailが存在しない場合無効であること' do
      user.email = ''
      expect(user).to_not be_valid
    end

    it 'passwordが存在しない場合無効であること' do
      user.password = ''
      expect(user).to_not be_valid
    end

    it 'パスワードは6文字以上であること' do
      user = User.create(password: '12345')
      user.valid?
      expect(user).to_not be_valid
    end

    it 'メールアドレスが255文字以上の場合無効であること' do
      user = User.create(email: 'a' * 247 + '@mail.com')
      user.valid?
      expect(user).to_not be_valid
    end

    it 'メールアドレスが既に存在している場合無効であること' do
      user.email = other_user.email
      expect(user).to_not be_valid
    end
  end
end
