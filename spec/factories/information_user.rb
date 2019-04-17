FactoryBot.define do
  factory :information_user do
    first_name {FFaker::Name.name}
    last_name {FFaker::Name.name}
    address {FFaker::Address.city}
    description {FFaker::Lorem.phrases}
    birthday {21/12/2001}
    weight {45}
    height {153}
    education {1}
    religion {"dao"}
    children {1}
    relationship_status {1}

    after(:build) do |information_user|
      user = FactoryBot.create :user
      blog.user_id = user.id
    end
  end
end
