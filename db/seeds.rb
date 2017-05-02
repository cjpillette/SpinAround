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

FibreType.create!(
    name: "Merino",
    isAnimal: true,
)

FibreType.create!(
    name: "Corriedale",
    isAnimal: true,
)

FibreType.create!(
    name: "Cashmere",
    isAnimal: true,
)

FibreType.create!(
    name: "Angora",
    isAnimal: true,
)

FibreType.create!(
    name: "Alpaca",
    isAnimal: true,
)

FibreType.create!(
    name: "BFL",
    isAnimal: true,
)

FibreType.create!(
    name: "Mohair",
    isAnimal: true,
)

FibreType.create!(
    name: "Possum",
    isAnimal: true,
)

FibreType.create!(
    name: "Wallaby",
    isAnimal: true,
)

FibreType.create!(
    name: "Cotton",
    isAnimal: false,
)

FibreType.create!(
    name: "Hemp",
    isAnimal: false,
)

FibreType.create!(
    name: "Bamboo",
    isAnimal: false,
)

FibreType.create!(
    name: "Nylon",
    isAnimal: false,
)

puts "13 fibre types created"
