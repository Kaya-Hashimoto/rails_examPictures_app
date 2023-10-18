50.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = Faker::Alphanumeric.alpha(number: 10)
  User.create!(name: name,
              email: email,
              password: password,
              password_digest: password)
end