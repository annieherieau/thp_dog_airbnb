# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "==== SEED ====="
puts "--- tables destroy_all ---"
City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

10.times do |i|
  c = City.create!(
    city_name: Faker::Address.city
  )
  c.save!
end
puts "--- 10 cities ---"

10.times do |i|
  Dogsitter.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample
  )
end
puts "--- 10 dogsitters ---"

40.times do |i|
  Dog.create!(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    city: City.all.sample
  )
end
puts "--- 40 dogs ---"

40.times do |i|
  dog = Dog.all.sample
  ds = Dogsitter.all.sample
  Stroll.create!(
    date: Faker::Date.between(from: Faker::Date.backward(days: 365), to: Faker::Date.forward(days: 23)),
    dog: dog,
    dogsitter: Dogsitter.all.sample,
    city: dog.city
  )
end
puts "--- 40 strolls ---"
puts "==== END SEED ====="