FactoryBot.define do
  factory :interested_in_gender do
    gender_id {1}
    after(:build) do |interested_in_gender|
      information_user = FactoryBot.create :information_user
      interested_in_gender.information_user_id = information_user.id
    end
  end
end
