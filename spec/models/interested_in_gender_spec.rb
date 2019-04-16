require "rails_helper"

RSpec.describe InterestedInGender, type: :model do
  context "#Relationships" do
    it { is_expected.to have_many(:information_users) }
    it { is_expected.to belong_to(:gender) }
  end
end
