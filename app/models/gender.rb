class Gender < ApplicationRecord
  has_many :information_user

  scope :show_gender, ->{pluck :name, :id}
  scope :name_gender, ->(gender_id){(find_by id: gender_id).name}
end
