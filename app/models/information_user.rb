class InformationUser < ApplicationRecord
  belongs_to :interested_in_gender
  has_one :gender
  has_one :user
  enum education: {High_school: 0, Vocational_school: 1, College: 2, University: 3, Masters: 4, PhD:5 }
  enum relationship_status: {Single: 0, Married: 1, Divorced: 3, Widowed: 4, Complicated:5 }
  enum children: {has_kids_not_live_with: 0, no_kid: 1, has_kids_live_with: 3}
end
