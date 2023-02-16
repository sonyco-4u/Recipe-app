# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create!(name: 'John Doe', email: 'john@gmail.com', password: 'john123')
user2 = User.create!(name: 'Julia Lisa', email: 'julia@gmail.com', password: 'julia123')
user3 = User.create!(name: 'Sofi Jun', email: 'sofi@gmail.com', password: 'sofi123')

food1 = user1.foods.create!(name: 'Apple', price: 3500, measurement_unit: 'kg')
food2 = user1.foods.create!(name: 'Pineapple', price: 4300, measurement_unit: 'kg')
food3 = user1.foods.create!(name: 'Chicken breasts', price: 6800, measurement_unit: 'units')

descripts1 = 'A hamburger or by apheresis burger, is a sandwich of German origin, consisting of two round-shaped buns generally
  garnished with ground beef and raw vegetables, lettuce, tomato, onion, pickle, and sauce...'
descripts2 = 'Pizza is a traditional cooking recipe of Italian cuisine, originating in Naples based on a flatbread of bread dough, topped
  with various mixtures of ingredients and baked in the oven.'
descripts3 = 'Crisps or potato chips, also known by the neologism of potato chips in Canada, are thin vegetable slices fried in oil,
  which makes them crunchy. They are usually made of potatoes, but can also be made of vegetables or fruits.'

recipe1 = user1.recipes.create!(name: 'Hamburger', description: "#{descripts1}", preparation_time: 1, cooking_time: 1.5, public: true)
recipe2 = user2.recipes.create!(name: 'Pizza',  description: "#{descripts2}", preparation_time: 4.5, cooking_time: 9, public: true)
recipe3 = user1.recipes.create!(name: 'chips', description: "#{descripts3}", preparation_time: 2.5, cooking_time: 6, public: true)