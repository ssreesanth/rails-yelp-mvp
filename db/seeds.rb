# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

Restaurant.create!(name: "Kung-Pao", address: "Berlin", category: "chinese")
Restaurant.create!(name: "Pizza", address: "Munich", category: "italian")
Restaurant.create!(name: "Ramen", address: "Leipzig", category: "japanese")
Restaurant.create!(name: "Breads", address: "Frankfurt", category: "french")
Restaurant.create!(name: "Waffles", address: "Dresden", category: "belgian")

puts "Created #{Restaurant.count} restaurants"
