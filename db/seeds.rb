# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying tables...'
Review.destroy_all
User_product.destroy_all
Product_picture.destroy_all
Product.destroy_all
User.destroy_all

puts 'Creating users'
User.create!(first_name: "Billie", last_name: "J", email: "billiej@gmail.com", password: "123456").save(validate: false)
User.create!(first_name: "Chow", last_name: "U", email: "chowu@gmail.com", password: "123456").save(validate: false)
User.create!(first_name: "Peter", last_name: "J", email: "peterj@gmail.com", password: "123456").save(validate: false)
User.create!(first_name: "Andreas", last_name: "M", email: "andreasj@gmail.com", password: "123456").save(validate: false)
User.create!(first_name: "Fiona", last_name: "K", email: "fionak@gmail.com", password: "123456").save(validate: false)
User.create!(first_name: "Rano", last_name: "K", email: "ranok@gmail.com", password: "123456").save(validate: false)


puts 'Creating Products'
Product.create!(name: "Malm", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
Product.create!(name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")


puts 'Creating reviews'
Review.create!(user_id: 1, rating: 5, content: "some review content", product_id: 1)

puts 'Creating User_products'
User_products.create!(user_id: 1, product_id: 1, purchase_date: "2018-07-11", assembled: "false")

puts 'Product_pictures'
Product_picture.create!(name: "name_inspire_product_pictures", type: "inspire", url: "url_product_pictures", product_id: 1)
Product_picture.create!(name: "name_guide_product_pictures", type: "guide", url: "url_product_pictures", product_id: 1)


