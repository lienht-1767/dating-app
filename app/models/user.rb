class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :grades
  has_many :blogs
  has_many :user_photos
  has_many :conversations
  has_many :participants
  has_one :information_user
end
