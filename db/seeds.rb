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

10.times do |yarn|
Yarn.create!(
    weight: 2,
    dye: 0,
    spinned_as: 1,
    metrage: 370,
    diameter: 18.5,
    ply: 2,
    color: "Blue #{yarn}",
    origin: "VIC",
    description: "This is a #{yarn} all about the hallow and it's brilliant",
)
end

Composition.create!(
    fibre_type_id: FibreType.last,
    percent_content: 75,
    yarn_id: Yarn.last.id,
)

Composition.create!(
    fibre_type_id: FibreType.first,
    percent_content: 25,
    yarn_id: Yarn.last.id,
)

puts "yarn with 2 compositions created"
