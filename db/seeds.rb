# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Rex", email: "rex@soul.com", password: "password")

Food.create(name: "Apple", measurement_unit: "kg", price: 100, quantity: 5, user_id: 1)
