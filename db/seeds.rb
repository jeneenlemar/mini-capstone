# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(
  name: "shirt", 
  price: 20,
  image_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQmymAckH4cJui8qLrissxIv1HTDGD7KaTnrgNSLDvr1PKDq1ENEh81xlOJtulmvNqYG1Hm04Z3-vrhqF8C38uI4gHj1kC-qk2tHAduz2ZQZN3H9D3OFKE2&usqp=CAc",
  description: "Plain black t-shirt"
  )

product.save

product = Product.new(
  name: "pants", 
  price: 25,
  image_url: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSpGLWks6to-J-p5-A_ImD_JZxglY90FlbRjRZq_FkQZRAavD1K1KHwH9e1fwuJTTxrnAebdUjm5IXw1sJJqr6Bq8fxrg4KmIDnBLi-qGxXVOsZauMRM4Gq&usqp=CAc",
  description: "jean style pants"
  )

product.save