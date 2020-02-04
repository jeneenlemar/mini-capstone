# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# product = Product.new(
#   name: "ZZZZZZZ", 
#   price: 5,
#   image_url: "ZZZZZZZ",
#   description: "ZZZZZZZ"
#   )

# product.save


# Supplier.create(name: "Winkles", email: "winkles@gmail.com", phone_number: "555-555-1234")
# Supplier.create(name: "Barry's Goodies", email: "barrys_goodies@gmail.com", phone_number: "555-555-8989")
# Supplier.create(name: "Oma Suppliers", email: "oma_suppliers@gmail.com", phone_number: "555-555-3487")

# Image.create([
#   {
#   url: "https://encrypted-tbn0.gstatic.com/",
#   product_id: 1
#   }, {
#   url: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSpGLWks6to-J-p5-A_ImD_JZxglY90FlbRjRZq_FkQZRAavD1K1KHwH9e1fwuJTTxrnAebdUjm5IXw1sJJqr6Bq8fxrg4KmIDnBLi-qGxXVOsZauMRM4Gq&usqp=CAc",
#   product_id: 2
#   }, {
#     url: "https://images-na.ssl-images-amazon.com/images/I/61ptxkFdLzL._AC_SL1000_.jpg",
#   product_id: 3 
#   }, {
#     url: "https://d1jqecz1iy566e.cloudfront.net/extralarge/fb259.jpg",
#   product_id: 4
#   }, {
#     url: "https://www.titleboxing.com/media/catalog/product/cache/6b41f70b366e621fd6e1a85621f5189a/j/r/jrb9-bl_1_3.jpg",
#   product_id: 5
#   }, {
#     url: "https://images-na.ssl-images-amazon.com/images/I/51XkOYuaMzL._AC_SX425_.jpg",
#   product_id: 7
#   }
# ])

CartedProduct.create(user_id: 1, product_id: 1, quantity: 1, status: "carted", order_id: nil)
CartedProduct.create(user_id: 2, product_id: 2, quantity: 1, status: "carted", order_id: nil)