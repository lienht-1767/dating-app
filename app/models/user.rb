class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :grades
  has_many :blogs
  has_many :user_photos
  has_many :interested_in_relations
  has_many :messages
  has_many :conversations, foreign_key: :sender_id
  has_one :information_user

  scope :user_list, ->(user_id){where.not(id: user_id)}

  acts_as_followable
  acts_as_follower
end
