require "rails_helper"

RSpec.describe RelationshipType, type: :model do
  context "#Relationships" do
    it { is_expected.to have_many(:interested_in_relations) }
  end

  context "#Enum" do
    it { is_expected.to define_enum_for(:name).with(friend:0, dating:2, marriage:3) }
  end
end
