Gender.create!(name: "Boy")
Gender.create!(name: "Girl")
Gender.create!(name: "Les")
Gender.create!(name: "Gay")

User.create!(
  email: "user@gmail.com",
  popularity: "5",
  admin: true,
  password: "password",
  confirmation_token: "8c80bbac5c4df6e9a85af6940ba1c3f3",
  confirmed_at: Time.zone.now,
  confirmation_sent_at: Time.zone.now)
9.times do |n|
  email = "user-#{n+1}@gmail.com"
  User.create!(
    email: email,
    popularity: "5",
    admin: false,
    password: "password",
    confirmation_token: "8c80bbac5c4df6e9a85af6940ba1c3f3",
    confirmed_at: Time.zone.now,
    confirmation_sent_at: Time.zone.now)
end

10.times do |n|
temp = InformationUser.create!(
  user_id: n+1,
  gender_id: rand(1..4),
  first_name: FFaker::Name.name,
  last_name: FFaker::Name.name,
  address: FFaker::Lorem.sentence(5),
  birthday: rand(10..20).years.from_now,
  weight: rand(39..80),
  height: rand(140..180),
  education: rand(1..6),
  relationship: rand(1..5),
  children: rand(1..3)
  )
temp.image.attach(io: File.open(Rails.root.join("public", "a.jpg")), filename: '#{n}.png')
end
