class RelationshipType < ApplicationRecord
  has_many :interested_in_relations
  enum name: {friend:0, dating:2, marriage:3}
end
