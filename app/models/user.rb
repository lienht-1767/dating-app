class User < ApplicationRecord
  has_many :blogs
  has_many :user_photos
  has_many :interested_in_relations
  has_many :conversations
  has_many :participants
  has_one :information_user
end
