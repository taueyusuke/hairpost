require 'rails_helper'

RSpec.feature "Likes", type: :feature do
  let(:user_a) { FactoryBot.create(:user, name: 'ユーザーA', email: 'a@exmple.com', password: '123456') }
  let(:login_user) { user_a }
  before do
    visit root_path
    click_link "ログイン"
    fill_in "メールアドレス", with: user.email
    fill_in "パスワード", with: user.password
    click_button "サインインする"
  end

  scenario 'いいねするが表示され、クリックするといいねができる' do
    expect(page).to have_content 'いいねする！'
    click_link 'いいねする！'
    within '.flash' do
      expect(page).to have_content 'この記事をいいね！しました！'
    end
  end

  before do
    click_link 'いいねする！'
  end

  scenario 'いいねした！が表示され、クリックするといいねが外れる' do
    expect(page).to have_content 'いいねした！'
    click_link 'いいねした！'
    within '.flash' do
      expect(page).to have_content 'この記事のいいね！を外しました...'
    end
  end
end
