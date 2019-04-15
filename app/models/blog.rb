class Blog < ApplicationRecord
  belongs_to :user
  enum status: {Public: 1, Pending: 0}
end
