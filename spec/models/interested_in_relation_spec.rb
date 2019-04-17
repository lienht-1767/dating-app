require "rails_helper"

RSpec.describe InterestedInRelation, type: :model do
  context "#Relationships" do
    it { is_expected.to belong_to(:relationship_type) }
    it { is_expected.to belong_to(:user) }
  end
end
