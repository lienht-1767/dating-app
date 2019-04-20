class Gender < ApplicationRecord
  has_one :information_user
  enum name: {Girls: 0, Boys: 1, Les: 2, Gay: 3}

  GENDER_PARAMS = [:name].freeze
end
