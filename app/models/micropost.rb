class Micropost < ApplicationRecord
  belongs_to :user
  #お気に入り
  has_many :favorites
  has_many :users, through: :favorites
  
  validates :content, presence: true, length: { maximum: 255 }
end