# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Rex", email: "rex@soul.com", password: "password")
User.create(name: "Pu2", email: "pu2@soul.com", password: "password")

Food.create(name: "Apple", measurement_unit: "kg", price: 100, quantity: 5, user_id: 1)
Food.create(name: "Orange", measurement_unit: "kg", price: 100, quantity: 5, user_id: 1)

Recipe.create(name: "Apple Pie", preparation_time: 2, cooking_time: 1, description: "This is a delicious Apple pie", public: true, user_id: 1)
Recipe.create(name: "Orange Pie", preparation_time: 1, cooking_time: 2, description: "This is a delicious Orange pie", public: false, user_id: 1)
Recipe.create(name: "Grape Pie", preparation_time: 3, cooking_time: 3, description: "This is a delicious Grape pie. This is a delicious Grape pie. This is a delicious Grape pie. This is a delicious Grape pie. This is a delicious Grape pie. This is a delicious Grape pie. This is a delicious Grape pie. This is a delicious Grape pie. This is a delicious Grape pie.", public: false, user_id: 2)