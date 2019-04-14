class InterestedInGender < ApplicationRecord
  belongs_to :gender
  has_many :information_users
end
