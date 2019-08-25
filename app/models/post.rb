class Post < ApplicationRecord
  has_one_attached :image
  validates :image, presence: true
  validates :user_id, presence: true

  belongs_to :user

  scope :of_followed_users, -> (following_users) { where user_id: following_users }
end
