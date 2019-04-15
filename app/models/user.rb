class User < ApplicationRecord
  has_many :grades
  has_many :blogs
  has_many :block_users
  has_many :user_photos
  has_many :interested_in_relations
  has_many :conversations
  has_many :participants
  has_one :infofmation_user
end
