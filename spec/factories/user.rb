FactoryBot.define do
  factory :user do
    email {FFaker::Internet.email}
    activated {true}
    admin {true}
    popularity {2}
  end
end
