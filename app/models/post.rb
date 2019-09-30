class Post < ApplicationRecord
  belongs_to :user

  has_many :photos, dependent: :destroy

  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy

  has_many :comments, dependent: :destroy

  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for :photos

  validates :caption, presence: true

  validates :sex, presence: true

  validates :length, presence: true

  validates :haircolor, presence: true

  validates :hairmemu, presence: true

  def liked_by(user)
    Like.find_by(user_id: user.id, post_id: id)
  end

end
