require "rails_helper"

RSpec.describe Conversation, type: :model do
  context "#Relationships" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:participants) }
  end
end
