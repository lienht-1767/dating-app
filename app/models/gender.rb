class Gender < ApplicationRecord
  has_one :information_user
  has_many :interested_in_genders
  enum name: {Girls: 0, Boys: 1, Les: 2, Gay: 3}
end
