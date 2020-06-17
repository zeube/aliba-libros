# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do
    precios = [1990, 2590, 3490, 3590, 4590, 5490, 9990, 15990]
    id_precio_aletorio = rand(8)
    selector_precio = precios[id_precio_aletorio]
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        description: Faker::Book.publisher,
        price: selector_precio,
        stock: rand(1..10)
    )
end