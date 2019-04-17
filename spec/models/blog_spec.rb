require "rails_helper"

RSpec.describe Blog, type: :model do
  let!(:blog) {FactoryBot.create :blog}

  context "#have attributes" do
    it "have attributes" do
      expect(Blog.new.attributes.keys).to include("id", "title", "summary",
        "content", "status", "created_at", "updated_at", "user_id")
    end
  end

  context "#Relationships" do
    it { is_expected.to belong_to(:user) }
  end

  context "Validations" do
    it {is_expected.to validate_presence_of :title}
    it {is_expected.to validate_length_of(:title)
      .is_at_most Settings.max_string_length}
    it {is_expected.to validate_presence_of :summary}
    it {is_expected.to validate_length_of(:summary)
      .is_at_most Settings.max_string_length}
    it {is_expected.to validate_length_of(:content)
      .is_at_least Settings.min_text_length}
  end

  context "#Enum" do
    it { is_expected.to define_enum_for(:status).with(Pending: 0, Public: 1) }
  end
end
