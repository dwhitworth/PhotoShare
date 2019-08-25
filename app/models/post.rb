class Post < ApplicationRecord
  has_one_attached :image
  validates :image, presence: true
  validates :user_id, presence: true

  belongs_to :user
end
