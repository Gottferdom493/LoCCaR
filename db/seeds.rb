# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Car.destroy_all
Car.create!(marque: "BMW", modele: "Z3", adresse: "10 av Marcel Dassault", prix: 15000)
Car.create!(marque: "Renault", modele: "Senic", adresse: "24 allée du clos fleuri", prix: 7500)
Car.create!(marque: "Ferrari", modele: "Top", adresse: "3 rue du palace, Monaco", prix: 375050)
# Booking.create!(marque: marque1, modele: modele1, adresse: Date.new(2022,03,15) , end_date: Date.new(2022,03,16))
