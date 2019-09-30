require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { FactoryBot.create(:comment) }

  describe 'コメントが有効' do
    it 'コメントが有効であること' do
      expect(comment).to be_valid
    end
  end
end
