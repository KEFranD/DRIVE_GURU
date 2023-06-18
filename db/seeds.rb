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
puts "review destroyed"
Booking.destroy_all
puts "bookings destroyed"

Instructor.destroy_all
puts "instructor destroyed"

User.destroy_all
puts "users destroyed"



puts "Creating user1..."

user1 = User.create(
  first_name: "Finley",
  last_name: "Crane",
  email: "finleycrane@mail.com",
  phone_number: "9874532",
  password: 123456
)
file01 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900477/Drive%20Guru/seed/heureux-jeune-homme-afro-americain-chemise-coloree-portant-lunettes-regardant-camera-souriant-joyeusement_141793-108881_raqal0.avif")
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
file02 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900360/Drive%20Guru/seed/jeune-homme-barbu-chemise-rayee_273609-5677_r4dg7m.avif")
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
file03 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900370/Drive%20Guru/seed/portrait-homme-riant_23-2148859448_j8dm0o.avif")
user3.photo.attach(io: file03, filename: "nes.png", content_type: "image/png")
user3.save

puts "User3 has been created succesfully !"

puts "Creating user4..."

user4 = User.create(
  first_name: "Pierre",
  last_name: "Casey",
  email: "pierrecasey@mail.com",
  phone_number: "7439829",
  password: 123456
)
file04 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900378/Drive%20Guru/seed/homme-boucle-large-sourire-montre-dents-parfaites-s-amuse-par-discussions-interessantes-cheveux-fonces-boucles-touffus-interieur-contre-mur-blanc-blanc_273609-17092_tbcrzx.avif")
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
file05 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900387/Drive%20Guru/seed/bouchent-portrait-jeune-homme-barbu-chemise-blanche-veste-posant-devant-camera-large-sourire-isole-gris_171337-629_fgbrxf.avif")
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
file06 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900396/Drive%20Guru/seed/jeune-belle-femme-pull-chaud-rose-aspect-naturel-souriant-portrait-isole-cheveux-longs_285396-896_pfyb99.avif")
user6.photo.attach(io: file06, filename: "nes.png", content_type: "image/png")
user6.save

puts "User6 has been created succesfully !"

user7 = User.create(
  first_name: "Alyssa",
  last_name: "Rich",
  email: "alyssarich@mail.com",
  phone_number: "9920292",
  password: 123456
)
file07 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900403/Drive%20Guru/seed/assez-souriant-joyeusement-femme-aux-cheveux-blonds-habille-desinvolture-regardant-satisfaction_176420-15187_xf3nlr.avif")
user7.photo.attach(io: file07, filename: "nes.png", content_type: "image/png")
user7.save

puts "User7 has been created succesfully !"

user8 = User.create(
  first_name: "Jessie",
  last_name: "Nolan",
  email: "jessienolan@mail.com",
  phone_number: "9302292",
  password: 123456
)
file08 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900418/Drive%20Guru/seed/jeune-femme-lunettes-rondes-pull-jaune_273609-7091_g5xrrv.avif")
user8.photo.attach(io: file08, filename: "nes.png", content_type: "image/png")
user8.save

puts "User8 has been created succesfully !"

user9 = User.create(
  first_name: "Lucy",
  last_name: "Dillon",
  email: "lucydillon@mail.com",
  phone_number: "9393222",
  password: 123456
)
file09 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900423/Drive%20Guru/seed/souriante-jeune-fille-rousse-au-gingembre-taches-rousseur-isolee-mur-vert-olive-espace-copie_141793-117849_ptsitl.avif")
user9.photo.attach(io: file09, filename: "nes.png", content_type: "image/png")
user9.save

puts "User9 has been created succesfully !"

user10 = User.create(
  first_name: "Mila",
  last_name: "Peralta",
  email: "milaperalta@mail.com",
  phone_number: "0383383",
  password: 123456
)
file10 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900429/Drive%20Guru/seed/gros-plan-jolie-femme-dents-parfaites-peau-propre-foncee-se-reposant-interieur-souriant-joyeusement-apres-avoir-recu-bonnes-nouvelles-positives_273609-1248_uhzxze.avif")
user10.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
user10.save

puts "User10 has been created succesfully !"

user11 = User.create(
  first_name: "Astrid",
  last_name: "Hess",
  email: "astridhess@mail.com",
  phone_number: "8383292",
  password: 123456
)
file11 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900445/Drive%20Guru/seed/femme-heureuse-polo-gris-bouton-epingle-rose_53876-102858_mg8ihl.avif")
user11.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
user11.save

puts "User11 has been created succesfully !"

user12 = User.create(
  first_name: "Melody",
  last_name: "Franklin",
  email: "melodyfranklin@mail.com",
  phone_number: "73822929",
  password: 123456
)
file12 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900454/Drive%20Guru/seed/gros-plan-elegante-jeune-femme-afro-americaine-recherche-amicale-cheveux-raides-droits-fonces-ayant-regard-joyeux-heureux-posant_344912-1016_ptue5y.avif")
user12.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
user12.save

puts "User12 has been created succesfully !"

user13 = User.create(
  first_name: "Della",
  last_name: "Hayden",
  email: "dellahayden@mail.com",
  phone_number: "9382929",
  password: 123456
)
file13 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900460/Drive%20Guru/seed/portrait-femme-caucasienne-souriante_53876-24998_xerv6x.avif")
user13.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
user13.save

puts "User13 has been created succesfully !"

user14 = User.create(
  first_name: "Tyler",
  last_name: "Spencer",
  email: "tylerspencer@mail.com",
  phone_number: "9382929",
  password: 123456
)
file14 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900471/Drive%20Guru/seed/mignon-jeune-homme-souriant-soies-recherche-satisfaction_176420-18989_ccjqhs.avif")
user14.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
user14.save

puts "User14 has been created succesfully !"

user15 = User.create(
  first_name: "Simone",
  last_name: "Middleton",
  email: "simonemiddleton@mail.com",
  phone_number: "9382828",
  password: 123456
)
file15 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686900497/Drive%20Guru/seed/beau-maquillage-tous-jours_181624-21819_nnlq3j.avif")
user15.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
user15.save

puts "User15 has been created succesfully !"



puts "Creating instructor1 (user 1)..."

instructor1 = Instructor.create!(
  company_name: "Roulé",
  address: "Moka, Mauritius",
  car_type: ["Automatic"],
  work_phone_number: "84939392",
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901610/Drive%20Guru/seed/instructor_1_ryd0lc.jpg")
instructor1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
instructor1.save
puts "Instructor1 has been created successfully !"

puts "Creating instructor2 (user 2)..."

instructor2 = Instructor.create!(
  company_name: "Apex",
  address: "Tamarin, Mauritius",
  car_type: ["Manuel"],
  work_phone_number: "83922928",
  user: user2
)
file2 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901611/Drive%20Guru/seed/instructor_2_aj0y9u.jpg")
instructor2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
instructor2.save
puts "Instructor2 has been created successfully !"

puts "Creating instructor3 (user 3)..."

instructor3 = Instructor.create!(
  company_name: "Little Wheel",
  address: "Curepipe, Mauritius",
  car_type: ["Automatic", "Manuel"],
  work_phone_number: "7329287",
  user: user3
)
file3 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901610/Drive%20Guru/seed/instructor_3_qlhveq.jpg")
instructor3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
instructor3.save
puts "Instructor3 has been created successfully !"

puts "Creating instructor4 (user 4)..."

instructor4 = Instructor.create!(
  company_name: "Cool Drive",
  address: "Port-Louis, Mauritius",
  car_type: ["Automatic", "Manuel"],
  work_phone_number: "7383927",
  user: user4
)
file4 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901610/Drive%20Guru/seed/instructor_4_rou6yn.png")
instructor4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
instructor4.save
puts "Instructor4 has been created successfully !"

puts "Creating instructor5 (user 5)..."

instructor5 = Instructor.create!(
  company_name: "Driving Tutors",
  address: "Moka, Mauritius",
  car_type: ["Automatic"],
  work_phone_number: "8383928",
  user: user5
)
file5 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901610/Drive%20Guru/seed/instructor_5_fyqqt5.png")
instructor5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
instructor5.save
puts "Instructor5 has been created successfully !"

puts "Creating instructor6 (user 6)..."

instructor6 = Instructor.create!(
  company_name: "Drive X",
  address: "Curepipe, Mauritius",
  car_type: ["Manuel"],
  work_phone_number: "73832828",
  user: user6
)
file6 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901610/Drive%20Guru/seed/instructor_6_ibmzbm.jpg")
instructor6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
instructor6.save
puts "Instructor6 has been created successfully !"

puts "Creating instructor7 (user 7)..."

instructor7 = Instructor.create!(
  company_name: "Ace Auto",
  address: "Tamarin, Mauritius",
  car_type: ["Automatic", "Manuel"],
  work_phone_number: "73928292",
  user: user7
)
file7 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901610/Drive%20Guru/seed/instructor_7_dwzi82.png")
instructor7.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
instructor7.save
puts "Instructor7 has been created successfully !"

puts "Creating instructor8 (user 8)..."

instructor8 = Instructor.create!(
  company_name: "Beep Beep",
  address: "Moka, Mauritius",
  car_type: ["Manuel"],
  work_phone_number: "8372928",
  user: user8
)
file8 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901611/Drive%20Guru/seed/instructor_8_hwpahh.jpg")
instructor8.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")
instructor8.save
puts "Instructor8 has been created successfully !"

puts "Creating instructor9 (user 9)..."

instructor9 = Instructor.create!(
  company_name: "Learn Me",
  address: "Curepipe, Mauritius",
  car_type: ["Automatic", "Manuel"],
  work_phone_number: "8372829",
  user: user9
)
file9 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901611/Drive%20Guru/seed/instructor_9_k0cdty.png")
instructor9.photo.attach(io: file9, filename: "nes.png", content_type: "image/png")
instructor9.save
puts "Instructor9 has been created successfully !"

puts "Creating instructor10 (user 10)..."

instructor10 = Instructor.create!(
  company_name: "J & K",
  address: "Port-Louis, Mauritius",
  car_type: ["Manuel"],
  work_phone_number: "7392928",
  user: user10
)
file010 = URI.open("https://res.cloudinary.com/dblraorbo/image/upload/v1686901611/Drive%20Guru/seed/instructor_10_u3is4i.png")
instructor10.photo.attach(io: file010, filename: "nes.png", content_type: "image/png")
instructor10.save
puts "Instructor10 has been created successfully !"

puts "Creating booking1 (user 11 books instructor 1)..."
booking1 = Booking.create(
  date: Date.today + 10,
  time: "30min - 500rs",
  user: user11,
  instructor: instructor1,
  car_type: ["Automatic"]
)
booking1.save
puts "Booking1 has been created succesfully !"

puts "Creating review1 (user 11 write a review for instructor 1)..."
review1 = Review.create(
  rating: 4,
  description: "Great instructor!",
  booking: booking1
)
review1.save
puts "Review1 has been created succesfully !"

puts "Creating booking2 (user 11 books instructor 1)..."
booking2 = Booking.create(
  date: Date.today + 10,
  time: "1h - 1000rs",
  user: user11,
  instructor: instructor1,
  car_type: ["Automatic"]
)
booking2.save
puts "Booking2 has been created succesfully !"


puts "Creating review2 (user 11 write a review for instructor 1)..."
review2 = Review.create(
  rating: 4,
  description: "Nice session !",
  booking: booking2
)
review2.save
puts "Review2 has been created succesfully !"

puts "Creating booking3 (user 12 books instructor 2)..."
booking3 = Booking.create(
  date: Date.today + 30,
  time: "30min - 500rs",
  user: user12,
  instructor: instructor2,
  car_type: ["Manuel"]
)
booking3.save
puts "Booking3 has been created succesfully !"

puts "Creating review3 (user 12 write a review for instructor 2)..."
review3 = Review.create(
  rating: 5,
  description: "Great instructor! Thank you !",
  booking: booking3
)
review3.save
puts "Review3 has been created succesfully !"

puts "Creating booking4 (user 12 books instructor 2)..."
booking4 = Booking.create(
  date: Date.today + 20,
  time: "2h - 1500rs",
  user: user12,
  instructor: instructor2,
  car_type: ["Manuel"]
)
booking4.save
puts "Booking4 has been created succesfully !"

puts "Creating review4 (user 12 write a review for instructor 2)..."
review4 = Review.create(
  rating: 3,
  description: "Not good today ...",
  booking: booking4
)
review4.save
puts "Review4 has been created succesfully !"

puts "Creating booking5 (user 13 books instructor 3)..."
booking5 = Booking.create(
  date: Date.today + 20,
  time: "1h - 1000rs",
  user: user13,
  instructor: instructor3,
  car_type: ["Manuel"]
)
booking5.save
puts "Booking5 has been created succesfully !"

puts "Creating review5 (user 13 write a review for instructor 3)..."
review5 = Review.create(
  rating: 2,
  description: "Not a good instructor!",
  booking: booking5
)
review5.save
puts "Review5 has been created succesfully !"

puts "Creating booking6 (user 13 books instructor 3)..."
booking6 = Booking.create(
  date: Date.today + 10,
  time: "2h - 1500rs",
  user: user13,
  instructor: instructor3,
  car_type: ["Manuel"]
)
booking6.save
puts "Booking6 has been created succesfully !"

puts "Creating review6 (user 13 write a review for instructor 3)..."
review6 = Review.create(
  rating: 3,
  description: "Better session",
  booking: booking6
)
review6.save
puts "Review6 has been created succesfully !"

puts "Creating booking7 (user 14 books instructor 4)..."
booking7 = Booking.create(
  date: Date.today + 20,
  time: "30min - 500rs",
  user: user14,
  instructor: instructor4,
  car_type: ["Automatic"]
)
booking7.save
puts "Booking7 has been created succesfully !"

puts "Creating review7 (user 14 write a review for instructor 4)..."
review7 = Review.create(
  rating: 5,
  description: "Great instructor!",
  booking: booking7
)
review7.save
puts "Review7 has been created succesfully !"

puts "Creating booking8 (user 14 books instructor 4)..."
booking8 = Booking.create(
  date: Date.today + 30,
  time: "1h - 1000rs",
  user: user14,
  instructor: instructor4,
  car_type: ["Automatic"]
)
booking8.save
puts "Booking8 has been created succesfully !"

puts "Creating review8 (user 14 write a review for instructor 4)..."
review8 = Review.create(
  rating: 4,
  description: "Great instructor!",
  booking: booking1
)
review8.save
puts "Review8 has been created succesfully !"

puts "Creating booking9 (user 15 books instructor 5)..."
booking9 = Booking.create(
  date: Date.today + 20,
  time: "2h - 1500rs",
  user: user15,
  instructor: instructor5,
  car_type: ["Automatic"]
)
booking9.save
puts "Booking9 has been created succesfully !"

puts "Creating review9 (user 15 write a review for instructor 5)..."
review9 = Review.create(
  rating: 5,
  description: "Very nice instructor!",
  booking: booking9
)
review9.save
puts "Review9 has been created succesfully !"

puts "Creating booking10 (user 15 books instructor 5)..."
booking10 = Booking.create(
  date: Date.today + 10,
  time: "1h - 1000rs",
  user: user15,
  instructor: instructor5,
  car_type: ["Automatic"]
)
booking10.save
puts "Booking10 has been created succesfully !"

puts "Creating review10 (user 15 write a review for instructor 5)..."
review10 = Review.create(
  rating: 4,
  description: "Great instructor!",
  booking: booking10
)
review10.save
puts "Review10 has been created succesfully !"

puts "Creating booking11 (user 11 books instructor 6)..."
booking11 = Booking.create(
  date: Date.today + 20,
  time: "30min - 500rs",
  user: user11,
  instructor: instructor6,
  car_type: ["Manuel"]
)
booking11.save
puts "Booking11 has been created succesfully !"

puts "Creating review11 (user 11 write a review for instructor 6)..."
review11 = Review.create(
  rating: 4,
  description: "Great instructor!",
  booking: booking11
)
review11.save
puts "Review11 has been created succesfully !"


puts "Creating booking12 (user 12 books instructor 7)..."
booking12 = Booking.create(
  date: Date.today + 10,
  time: "30min - 500rs",
  user: user12,
  instructor: instructor7,
  car_type: ["Manuel"]
)
booking12.save
puts "Booking12 has been created succesfully !"

puts "Creating review12 (user 12 write a review for instructor 7)..."
review12 = Review.create(
  rating: 1,
  description: "Bad instructor!",
  booking: booking1
)
review12.save
puts "Review12 has been created succesfully !"

puts "Creating booking13 (user 12 books instructor 8)..."
booking13 = Booking.create(
  date: Date.today + 10,
  time: "30min - 500rs",
  user: user12,
  instructor: instructor8,
  car_type: ["Manuel"]
)
booking13.save
puts "Booking13 has been created succesfully !"

puts "Creating review13 (user 12 write a review for instructor 8)..."
review13 = Review.create(
  rating: 4,
  description: "Great instructor!",
  booking: booking13
)
review13.save
puts "Review13 has been created succesfully !"

puts "Creating booking14 (user 12 books instructor 9)..."
booking14 = Booking.create(
  date: Date.today + 10,
  time: "1h - 1000rs",
  user: user12,
  instructor: instructor9,
  car_type: ["Automatic"]
)
booking14.save
puts "Booking14 has been created succesfully !"

puts "Creating review14 (user 12 write a review for instructor 9)..."
review14 = Review.create(
  rating: 4,
  description: "Great instructor!",
  booking: booking14
)
review14.save
puts "Review14 has been created succesfully !"

puts "Creating booking15 (user 15 books instructor 10)..."
booking15 = Booking.create(
  date: Date.today + 20,
  time: "2h - 1500rs",
  user: user12,
  instructor: instructor10,
  car_type: ["Manuel"]
)
booking15.save
puts "Booking15 has been created succesfully !"

puts "Creating review15 (user 12 write a review for instructor 10)..."
review15 = Review.create(
  rating: 4,
  description: "Great instructor!",
  booking: booking15
)
review15.save
puts "Review15 has been created succesfully !"
