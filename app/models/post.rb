class Post < ApplicationRecord
  validates :caption, presence: true

  belongs_to :user

  has_many :photos, dependent: :destroy

  accepts_nested_attributes_for :photos
end
