class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :image, presence: true
  
  has_many :likes,  dependent: :destroy
  has_many :like_users, through: :likes, source: :user
end
