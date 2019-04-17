require "rails_helper"

RSpec.describe InformationUser, type: :model do
  context "#Relationships" do
    it { is_expected.to belong_to(:interested_in_gender) }
  end

  context "#Enum" do
    it { is_expected.to define_enum_for(:education).with(High_school: 0, Vocational_school: 1, College: 2, University: 3, Masters: 4, PhD:5)}
    it { is_expected.to define_enum_for(:relationship_status).with(Single: 0, Married: 1, Divorced: 3, Widowed: 4, Complicated:5 )}
    it { is_expected.to define_enum_for(:children).with(has_kids_not_live_with: 0, no_kid: 1, has_kids_live_with: 3)}
  end
end
