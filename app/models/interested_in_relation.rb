class InterestedInRelation < ApplicationRecord
  belongs_to :user
  belongs_to :relationship_type
end
