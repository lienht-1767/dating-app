class InformationUser < ApplicationRecord
  has_one :gender
  belongs_to :user
  has_one_attached :image

  enum education: {High_school: 1, Vocational_school: 2, College: 3,
    University: 4, Masters: 5, PhD: 6}
  enum relationship: {Single: 1, Married: 2, Divorced: 3, Widowed: 4,
    Complicated: 5}
  enum children: {has_kids_not_live_with: 1, no_kid: 2, has_kids_live_with: 3}

  INFORMATION_PARAMS = [:user_id, :first_name, :last_name,
    :gender_id, :birthday, :weight, :height, :address, :education,
    :relationship, :religion, :children, :description, :id, :image].freeze

  validates :image, presence: true
  validates :first_name, presence: true, length: {maximum: Settings.max_name_length}, length: {minimum: Settings.min_name_length}
  validates :last_name, presence: true, length: {maximum: Settings.max_name_length}, length: {minimum: Settings.min_name_length}
  validates :address, presence: true
  validates :birthday, presence: true

  scope :info_list, ->(user_id){where.not(id: user_id)}
  scope :get_age, ->(id){find_by(id: id).birthday}
  scope :age_lteq, lambda{|age|
    age_from = Date.today.year - age.to_i
    where("birthday >= ?", Date.new(age_from))
  }
  scope :age_gteq, lambda{|age|
    year = Date.today.year - age.to_i
    age_to = Date.new(year + 1) - 1
    where("birthday <= ?", age_to)
  }

  private

  def self.ransackable_scopes(auth_object = nil)
    %i(age_gteq age_lteq)
  end
end
