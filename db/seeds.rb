# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'admin@fooddelivery.com',
password: 'p@ssword',
password_confirmation: 'p@ssword',
admin: true)

25.times do |i|
  Products.create!(
    name: "Pizza",
    description: "Crusty Pizza with cheese and wheat",
    price: 150.00,
    catering_item: true
  )
end