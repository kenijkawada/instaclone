class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :content, presence: true
  validates :content, length: {in: 1..140}

  belongs_to :user, optional: true, foreign_key: 'user_id'
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user


end
