require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }
  describe 'validation' do
    it "有効なfactoryを持つ" do
      expect(FactoryBot.build(:user)).to be_valid
    end

    it "nameがなければ無効" do
      user = FactoryBot.build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it "emailがなければ無効" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "passwordがなければ無効" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "重複したメールアドレスなら無効な状態" do
      FactoryBot.create(:user, email: "aaron@example.com")
      user = FactoryBot.build(:user, email: "aaron@example.com")
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")
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

    it 'ユーザー名が存在しない場合無効であること' do
      user.name = ''
      expect(user).to_not be_valid
    end
  end



end
