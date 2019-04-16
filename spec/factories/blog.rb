FactoryBot.define do
  factory :blog do
    title { "Phuc" }
    content { FFaker::Lorem.phrases }
    summary { "lien" }

    after(:build) do |blog|
      user = FactoryBot.create :user
      blog.user_id = user.id
    end
  end
end
