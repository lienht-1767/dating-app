require "rails_helper"

RSpec.describe Gender, type: :model do
  let!(:gender) {FactoryBot.create :gender}

  context "#have attributes" do
    it "have attributes" do
      expect(Gender.new.attributes.keys).to include("id", "created_at", "updated_at", "name")
    end
  end

  context "#Relationships" do
    it { is_expected.to have_one(:information_user) }
    it { is_expected.to have_many(:interested_in_genders) }
  end

  context "#Enum" do
    it { is_expected.to define_enum_for(:name).with(Girls: 0, Boys: 1, Les: 2, Gay: 3) }
  end
end
