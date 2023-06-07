# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Creating user1..."

user1 = User.create(
  first_name: "John",
  last_name: "Doe",
  email: "johndoe@mail.com",
  phone_number: 9874532,
  instructor: true,
  location: "Port Louis",
  password: 123456
)

user2 = User.create(
  first_name: "Joel",
  last_name: "Do",
  email: "joedoe@mail.com",
  phone_number: 9874123,
  location: "Moka",
  instructor: true,
  password: 123456
)

user3 = User.create(
  first_name: "Jane",
  last_name: "Does",
  email: "janedoe@mail.com",
  phone_number: 9874123,
  location: "St Pierre",
  instructor: false,
  password: 123123
)

puts "User1 has been created succesfully !"
