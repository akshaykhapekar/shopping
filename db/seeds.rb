# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@category = Category.create(name: "Food", description: "Health" )

10.times do
	@category.products.create(name: Faker::Food.dish, price: Faker::Commerce.price, quantity: Faker::Number.between(1, 10))
end

@category = Category.create(name: "Name", description: "Info" )

10.times do
	@category.products.create(name: Faker::Food.dish, price: Faker::Commerce.price, quantity: Faker::Number.between(1, 10))
end