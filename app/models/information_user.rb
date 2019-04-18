class InformationUser < ApplicationRecord
  has_one :gender
  has_one :user

  enum education: {High_school: 0, Vocational_school: 1, College: 2,
    University: 3, Masters: 4, PhD:5 }
  enum relationship: {Single: 0, Married: 1, Divorced: 2, Widowed: 3,
    Complicated: 4 }
  enum children: {has_kids_not_live_with: 0, no_kid: 1, has_kids_live_with: 2}

  INFORMATION_PARAMS = [:user_id, :first_name, :last_name,
    :gender_id, :birthday, :weight, :height, :address, :education,
    :relationship, :religion, :children, :id].freeze
end
