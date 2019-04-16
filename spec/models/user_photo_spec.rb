require "rails_helper"

RSpec.describe UserPhoto, type: :model do
  context "#Relationships" do
    it { is_expected.to belong_to(:user) }
  end
end
