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
  password: 123456
)
puts "User1 has been created succesfully !"

puts "Creating user2..."

user2 = User.create(
  first_name: "Mario",
  last_name: "Bro",
  email: "mariobro@mail.com",
  phone_number: 5478390,
  password: 123456
)
puts "User2 has been created succesfully !"

puts "Creating instructor1..."

instructor1 = Instructor.create(
  company_name: "Roulé",
  address: "Moka",
  car_transmission: "automatique",
  work_phone_number: 84939392,
  user_id: 1
)

puts "Instructor1 has been created succesfully !"

# puts "Creating instructor2..."

# instructor2 = Instructor.create(
#   company_name: "TamMam",
#   address: "Tamarin",
#   car_transmission: "manuel",
#   work_phone_number: 84938447,
#   user_id: 1
# )

# puts "Instructor2 has been created succesfully !"

puts "Creating instructor3..."

instructor3 = Instructor.create(
  company_name: "Jeannine",
  address: "Paris",
  car_transmission: "automatique",
  work_phone_number: 94983493,
  user_id: 1
)

puts "Instructor3 has been created succesfully !"

puts "Creating booking1..."

booking1 = Booking.create(
  date:
  time_slot:
  user_id:
  instructor_id:
)

puts "Booking1 has been created succesfully !"
