# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'
require 'open-uri'
# require_relative '../app/models/reviews'


puts "Cleaning database..."
Review.destroy_all
Instructor.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating user1..."

user1 = User.create(
  first_name: "John",
  last_name: "Doe",
  email: "johndoe@mail.com",
  phone_number: "9874532",
  password: 123456
)
file01 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686579613/Drive%20Guru/user_1_i4k1ru.png")
user1.photo.attach(io: file01, filename: "nes.png", content_type: "image/png")
user1.save

puts "User1 has been created succesfully !"

puts "Creating user2..."

user2 = User.create(
  first_name: "Bernard",
  last_name: "Mingo",
  email: "bernardmingo@mail.com",
  phone_number: "5478390",
  password: 123456
)
file02 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686579612/Drive%20Guru/user_2_fjfe7t.png")
user2.photo.attach(io: file02, filename: "nes.png", content_type: "image/png")
user2.save

puts "User2 has been created succesfully !"

puts "Creating user3..."

user3 = User.create(
  first_name: "Vincent",
  last_name: "Leaure",
  email: "vincentleaure@mail.com",
  phone_number: "8484938",
  password: 123456
)
file03 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686579613/Drive%20Guru/user_4_sckbh1.png")
user3.photo.attach(io: file03, filename: "nes.png", content_type: "image/png")
user3.save

puts "User3 has been created succesfully !"

puts "Creating user4..."

user4 = User.create(
  first_name: "Pierre",
  last_name: "Man",
  email: "pierreman@mail.com",
  phone_number: "7439829",
  password: 123456
)
file04 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686579613/Drive%20Guru/user_4_sckbh1.png")
user4.photo.attach(io: file04, filename: "nes.png", content_type: "image/png")
user4.save

puts "User4 has been created succesfully !"

puts "Creating user5..."

user5 = User.create(
  first_name: "Brice",
  last_name: "Bannesy",
  email: "bricebannesy@mail.com",
  phone_number: "3739829",
  password: 123456
)
file05 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686579613/Drive%20Guru/user_5_ra1kbt.png")
user5.photo.attach(io: file05, filename: "nes.png", content_type: "image/png")
user5.save

puts "User5 has been created succesfully !"

puts "Creating user6..."

user6 = User.create(
  first_name: "Elodie",
  last_name: "Janvier",
  email: "elodiejanvier@mail.com",
  phone_number: "7439829",
  password: 123456
)
file06 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686579613/Drive%20Guru/user_6_h5bbt1.png")
user6.photo.attach(io: file06, filename: "nes.png", content_type: "image/png")
user6.save

puts "User6 has been created succesfully !"


puts "Creating instructor1..."

instructor1 = Instructor.create!(
  company_name: "Roulé",
  address: "Moka, Mauritius",
  car_type: ["Automatic"],
  work_phone_number: "84939392",
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686572822/Drive%20Guru/instructor_1_piowwx.jpg")
instructor1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
instructor1.save
puts "Instructor1 has been created successfully !"

# puts "Creating instructor2..."

# instructor2 = Instructor.create!(
#   company_name: "Tracé",
#   address: "Tamarin, Mauritius",
#   car_type: ["Manual"],
#   work_phone_number: "6473292",
#   user: user2
# )
# file2 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686572827/Drive%20Guru/instructor_2_ctpbi7.jpg")
# instructor2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
# instructor2.save
# puts "Instructor2 has been created succesfully !"

puts "Creating booking1..."
booking1 = Booking.create(
  date: Date.today + 10,
  time: "30min",
  user: user4,
  instructor: instructor1,
  car_type: ["Automatic"]
)

Review.create!(
  rating: 4,
  description: "Great instructor!",
  booking: booking1
)

puts "Booking1 has been created succesfully !"

puts "Creating booking2..."

booking2 = Booking.create(
  date: Date.today + 20,
  time: "1h",
  user_id: 6,
  instructor_id: 2,
  car_type: ["Manual"]
)


Review.create!(
  rating: 1,
  description: "bad experience!",
  booking: booking2
)

puts "Booking2 has been created succesfully !"
