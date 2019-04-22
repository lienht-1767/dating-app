class Gender < ApplicationRecord
  has_many :information_user

  GENDER_PARAMS = [:name].freeze

  scope :show_gender, ->{pluck :name, :id}
  scope :name_gender, ->(gender_id){(find_by id: gender_id).name}
end
