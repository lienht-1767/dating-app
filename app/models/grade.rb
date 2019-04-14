class Grade < ApplicationRecord
  belongs_to :user
  enum grade: {Bad: 0, Good: 1, Awesome: 2}
end
