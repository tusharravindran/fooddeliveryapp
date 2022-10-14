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
  
  Category.create!(heading: 'Pizza', body: "Crusty Pizza with cheese and wheat!", display: true)
  Category.create!(heading: 'Burger', body: "Crispy Patty between Fresh Buns Served with Ketchup!", display: true)
  Category.create!(heading: 'Pasta', body: "Directly from Italy Chef's Kitchen From  Served with Love !", display: true)
  Category.create!(heading: 'Dessert', body: "Cold as snow ,Sweet as Honey", display: true)
  
  
  21.times do |i|
    pizza = Product.new(
      name: "Veg Pizza",
      description: "Crusty Pizza with cheese and wheat",
      price: 150.00,
      catering: true,
      category: Category.find(1)
    )
  
      burger = Product.new(
        name: "Veg burger",
        description: "Crusty and Crispy Patty between Fresh Buns Served with Ketchup",
        price: 90.00,
        catering: true,
        category: Category.find(2)
      )
        pasta = Product.new(
          name: "italian pasta",
          description: "Directly from Italy Chef's Kitchen From  Served with Love !",
          price: 130.00,
          catering: true,
          category: Category.find(3)
        )
    dessert = Product.new(
            name: "Ice Cream",
            description: "Cold as snow ,Sweet as Honey",
            price: 100.00,
            catering: true,
            category: Category.find(4)
          )
 
          pizza.image.attach(
            io: File.open('public/pizza.jpg'),
            filename:  "pizza.jpg"
          )
          burger.image.attach(
            io: File.open('public/burger.jpg'),
            filename:  "burger.jpg"
          )
          pasta.image.attach(
            io: File.open('public/pasta.jpg'),
            filename:  "pasta.jpg"
          )
          dessert.image.attach(
            io: File.open('public/desserts.jpg'),
            filename:  "desserts.jpg"
          )


    if i == 5  
      pizza.featured = true
      burger.featured=true
      pasta.featured = true
      dessert.featured = true
    end
    pizza.save
    burger.save
    pasta.save
    dessert.save
  end
  
  