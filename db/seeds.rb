# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying tables...'
Review.destroy_all
UserProduct.destroy_all
ProductPicture.destroy_all
Product.destroy_all
User.destroy_all

puts 'Creating users'
User.create!(id: 1, email: "billiej@gmail.com", password: "123456").save(validate: false)
User.create!(id: 2, email: "chowu@gmail.com", password: "123456").save(validate: false)
User.create!(id: 3, email: "peterj@gmail.com", password: "123456").save(validate: false)
User.create!(id: 4, email: "andreasj@gmail.com", password: "123456").save(validate: false)
User.create!(id: 5, email: "fionak@gmail.com", password: "123456").save(validate: false)
User.create!(id: 6, email: "ranok@gmail.com", password: "123456").save(validate: false)

puts 'Creating Products'
Product.create!(id: 1, name: "Malm", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
Product.create!(id: 2, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")

puts 'Creating reviews'
Review.create!(id: 1, user_id: 1, rating: 5, content: "some review content", product_id: 1)


puts 'Product_pictures'
ProductPicture.create!(id: 1, name: "name_inspire_product_pictures", picture_type: "inspire", url: "url_product_pictures", product_id: 1)
ProductPicture.create!(id: 2, name: "name_guide_product_pictures", picture_type: "guide", url: "url_product_pictures", product_id: 1)

puts 'Creating User_products'
UserProduct.create!(id: 1, user_id: 1, product_id: 1, purchase_date: "2018-07-11")

