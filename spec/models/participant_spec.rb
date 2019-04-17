require "rails_helper"

RSpec.describe Participant, type: :model do
  context "#Relationships" do
    it { is_expected.to belong_to(:conversation) }
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:messages) }
  end
end
