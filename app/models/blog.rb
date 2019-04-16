class Blog < ApplicationRecord
  belongs_to :user
  enum status: {Public: 1, Pending: 0}

  BLOG_PARAMS = [:title, :content, :summary, :status].freeze

  validates :title, presence: true, length: {maximum: Settings.max_string_length}
  validates :content, presence: true, length: {minimum: Settings.min_text_length}
  validates :summary, presence: true, length: {maximum: Settings.max_string_length}
end
