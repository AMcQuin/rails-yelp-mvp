# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
le_comptoir_de_la_gastronomie = { name: "Le Comptoir de la Gastronomie", address: "34 rue Montmartre 75001 Paris", phone_number: "01 42 33 31 32", category: 'french' }
bistro_des_augustins = { name: "Bistro des Augustins", address: "39 quai des Grands Augustins 75006 Paris", phone_number: "01 43 54 04 41", category: 'french' }
as_du_fallafel = { name: "L'As du Fallafel", address: "34 rue des Rosiers 75004 Paris", phone_number: "01 48 87 63 60", category: 'belgian' }
sanukiya = { name: "Sanukiya", address: "9 rue d'Argenteuil 75001 Paris", phone_number: "01 42 60 52 61", category: 'japanese' }
firmine = { name: "Firmine", address: "38 bis avenue de Suffren 75015 Paris", phone_number: "01 47 34 27 91", category: 'italian' }

[le_comptoir_de_la_gastronomie, bistro_des_augustins, as_du_fallafel,sanukiya, firmine].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
