# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  scenario 'user creates a new project' do
    user = FactoryBot.create(:user)
    visit root_path
    click_link 'ログイン'
    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: user.password
    click_button 'サインインする'
    expect(page).to have_content 'サインインしました。'
  end

  scenario '投稿' do
    visit new_post_path
    fill_in 'キャプションを書く', with: 'test'
    attach_file_for_direct_upload("#{Rails.root}/spec/fixtures/image/images.jpeg")
    upload_directly(ImageUploader.new, 'Upload Image')
    choose 'メンズ'
    choose 'ショート'
    choose 'カラーなし'
    choose 'パーマ'
    click_button '投稿する'
    expect(page).to have_content '投稿が保存されました'
  end

  let(:user_a) { FactoryBot.create(:user, name: 'ユーザーA', email: 'a@exmple.com', password: '123456') }
  let(:login_user) { user_a }
  before do
    visit root_path
    click_link 'ログイン'
    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: user.password
    click_button 'サインインする'
  end

  scenario '削除機能' do
    find("#post-#{post.id} .delete-post-icon").click
    expect(page).to have_content '投稿が削除されました'
  end
end
