# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cereal1 = Product.new(name:"Colon Blow", price: 3.89, image_url: "x", description: "30,000 bowls of Total to equal the fiber content in a single bowl of Colon Blow")
cereal1.save

cereal2 = Product.new(name:"Super Colon Blow", price: 3.89, image_url: "x", description:"2.5 million bowls of Total to equal the fiber content in a single bowl of Colon Blow")
cereal2.save

cereal3 = Product.new(name:"Count Chocula Silver", price: 2.50, image_url:"x", description:"Count Chocula with good heart health along with kooky marshmallow bats! Bwa-ah-ah-ah-ah!")
cereal3.save

cereal4 = Product.new(name:"Cracklin' Oat Flakes (Now with Ecstasy)", price: 153.89, image_url: "x", description: "Cracklin' Oat Flakes, Now with Ecstasy")
cereal4.save

cereal5 = Product.new(name:"Quarry", price:3.99, image_url:"x", description:"The only breakfast cereal that's pure 100% rocks and pebbles. Better tasting, 'cause it's mined!")
cereal5.save

item = Supplier.new(name:"Paste Cereal", email:"gimme@pastecereal.com", phone_number:"(555) 555-555")
item.save
item = Supplier.new(name:"General Swills", email:"general@swills.com", phone_number:"(123) 456-7890")
item.save
item = Supplier.new(name:"Killall Company", email:"go@Killall.com", phone_number:"(098) 765-4321")
item.save