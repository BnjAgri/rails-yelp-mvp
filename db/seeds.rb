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

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", adress: "7 Boundary St, London E2 7JE", phone_number: "0222222", category: "chinese")
Restaurant.create!(name: "chez toto", adress: "3 rue blanche", phone_number: "02555555", category: "japanese")
Restaurant.create!(name: "bnj's", adress: "3 chemin toto", phone_number: "0245222", category: "belgian")
Restaurant.create!(name: "robert's", adress: "57 bd Barbès", phone_number: "0455222", category: "french")
Restaurant.create!(name: "bristol", adress: "147 Boundary St, London", phone_number: "022247222", category: "italian")
# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
