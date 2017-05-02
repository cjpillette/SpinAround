User.create!(
  email: "admin@test.com",
  password: "123456",
  password_confirmation: "123456",
  role: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "spinner@test.com",
  password: "123456",
  password_confirmation: "123456",
  role: "spinner_user",
)

puts "1 spinner user created"

User.create!(
  email: "purchaser@test.com",
  password: "123456",
  password_confirmation: "123456",
  role: "purchaser_user",
)

puts "1 purchaser user created"
