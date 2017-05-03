User.create!(
  email: "chief@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "site_admin"
)

User.create!(
  email: "captain@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "site_admin"
)

puts "2 Admin users created"

User.create!(
  email: "susan@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "spinner_seller",
)

User.create!(
  email: "sally@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "spinner_seller",
)

User.create!(
  email: "sarah@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "spinner_seller",
)

User.create!(
  email: "sophie@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "spinner_seller",
)

puts "4 spinners created"

User.create!(
  email: "aaron@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "user",
)

User.create!(
  email: "amelie@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "user",
)

User.create!(
  email: "albert@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "user",
)

User.create!(
  email: "amandine@test.com",
  password: "123456",
  password_confirmation: "123456",
  roles: "user",
)

puts "4 purchasers user created"

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

Skein.create!(
    price: 31.5,
    spinned_by_id: 3,
    skein_available: 1,
    photo_main: "hand-spun-1.jpg",
    yarn_id: Yarn.last.id,
)

Skein.create!(
    price: 35.5,
    spinned_by_id: 4,
    skein_available: 3,
    photo_main: "hand-spun-2.jpg",
    yarn_id: Yarn.last.id,
)

Skein.create!(
    price: 40,
    spinned_by_id: 5,
    skein_available: 2,
    photo_main: "hand-spun-3.jpg",
    yarn_id: Yarn.first.id,
)

puts "3 skeins were created"
