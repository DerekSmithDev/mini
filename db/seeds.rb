# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cereal1 = Product.new(name:"Colon Blow", price: 3.89, description: "30,000 bowls of Total to equal the fiber content in a single bowl of Colon Blow")
cereal1.save

cereal2 = Product.new(name:"Super Colon Blow", price: 3.89, description:"2.5 million bowls of Total to equal the fiber content in a single bowl of Colon Blow")
cereal2.save

cereal3 = Product.new(name:"Count Chocula Silver", price: 2.50, description:"Count Chocula with good heart health along with kooky marshmallow bats! Bwa-ah-ah-ah-ah!")
cereal3.save

cereal4 = Product.new(name:"Cracklin' Oat Flakes (Now with Ecstasy)", price: 153.89, description: "Cracklin' Oat Flakes, Now with Ecstasy")
cereal4.save

cereal5 = Product.new(name:"Quarry", price:3.99, description:"The only breakfast cereal that's pure 100% rocks and pebbles. Better tasting, 'cause it's mined!")
cereal5.save

supplier = Supplier.new(name:"Paste Cereal", email:"gimme@pastecereal.com", phone_number:"(555) 555-555")
supplier.save
supplier = Supplier.new(name:"General Swills", email:"general@swills.com", phone_number:"(123) 456-7890")
supplier.save
supplier = Supplier.new(name:"Killall Company", email:"go@Killall.com", phone_number:"(098) 765-4321")
supplier.save

user = User.new(name: "peter", email: "peter@email.com", password: "password", password_confirmation: "password", admin: true)
user.save
user = User.new(name: "adam", email: "adam@email.com", password: "password", password_confirmation: "password")
user.save
user = User.new(name: "test", email: "test@email.com", password: "password", password_confirmation: "password")
user.save
user = User.new(name: "russell", email: "russell@email.com", password: "password", password_confirmation: "password")
user.save

category = Category.new(name: "fiber")
category.save
category = Category.new(name: "candy")
category.save
category = Category.new(name: "drugs")
category.save
category = Category.new(name: "vegan")
category.save

category_product = CategoryProduct.new(product_id: 1, category_id: 1)
category_product.save
category_product = CategoryProduct.new(product_id: 1, category_id: 4)
category_product.save
category_product = CategoryProduct.new(product_id: 2, category_id: 1)
category_product.save
category_product = CategoryProduct.new(product_id: 2, category_id: 4)
category_product.save
category_product = CategoryProduct.new(product_id: 3, category_id: 1)
category_product.save
category_product = CategoryProduct.new(product_id: 3, category_id: 2)
category_product.save
category_product = CategoryProduct.new(product_id: 4, category_id: 1)
category_product.save
category_product = CategoryProduct.new(product_id: 4, category_id: 3)
category_product.save
category_product = CategoryProduct.new(product_id: 5, category_id: 1)
category_product.save
category_product = CategoryProduct.new(product_id: 5, category_id: 4)
category_product.save