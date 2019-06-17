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
Product.create!(id: 1, name: "Malm", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560770882/malm_ico_uo9vc2.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560771166/malm_img_v8aecz.webp", pdf: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560776545/malm_pdf_tolpxc.pdf", video: "show-video")
Product.create!(id: 2, name: "Hasselvika", description: "6-drawer chest, gray-beige", article_number: "604.217.38", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560776370/hasselvika_ico_sqmcwv.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560776374/hasselvika_img_fjot9o.webp", pdf: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560776422/hasselvika_pdf_qphpve.pdf", video: "show-video")
Product.create!(id: 3, name: "Hemnes Ico1", description: "8-drawer dresser, dark gray gray stained", article_number: "603.817.37  ", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782091/ico_hemnes1_sgb9hl.webp", image: "image-url", pdf: "show-pdf", video: "show-video")
Product.create!(id: 4, name: "Hemnes Ico2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782094/ico_hemnes2_dkank6.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782169/img_hemnes_i8wwge.webp", pdf: "show-pdf", video: "show-video")
Product.create!(id: 5, name: "Hemnes Ico3", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782098/ico_hemnes3_ilnojp.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782169/img_hemnes_i8wwge.webp", pdf: "show-pdf", video: "show-video")
Product.create!(id: 6, name: "Hemnes Image", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782169/img_hemnes_i8wwge.webp", pdf: "show-pdf", video: "show-video")
Product.create!(id: 7, name: "Tarva", description: "6-drawer chest, pine", article_number: "803.607.05", icon: "icon-url", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782533/img_tarva_fq5ouo.jpg", pdf: "show-pdf", video: "show-video")
Product.create!(id: 8, name: "Tarva", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782400/ico_tarva1_tvsxdp.webp", image: "image-url", pdf: "show-pdf", video: "show-video")
Product.create!(id: 9, name: "Tarva", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782404/ico_tarva2_gollpq.webp", image: "image-url", pdf: "show-pdf", video: "show-video")
Product.create!(id: 10, name: "Tarva", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782408/ico_tarva3_mrmv8p.webp", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 11, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 12, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 13, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 14, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 15, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 16, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 17, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 18, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 19, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")
# Product.create!(id: 20, name: "Malm2", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "icon-url", image: "image-url", pdf: "show-pdf", video: "show-video")

puts 'Creating reviews'
Review.create!(id: 1, user_id: 1, rating: 5, content: "some review content", product_id: 1)


puts 'Product_pictures'
ProductPicture.create!(id: 1, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560442690/w0ddxfdejdsuefy1jcru.jpg", product_id: 2)
ProductPicture.create!(id: 2, name: "Guide picture", picture_type: "guide", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775754/m1_cfqoqq.png", product_id: 1)
ProductPicture.create!(id: 3, name: "Screw picture", picture_type: "screw", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775759/m2_wikldn.png", product_id: 1)
ProductPicture.create!(id: 4, name: "Tool picture", picture_type: "tool", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775759/m2_wikldn.png", product_id: 1)
ProductPicture.create!(id: 5, name: "Overview picture", picture_type: "overview", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775759/m2_wikldn.png", product_id: 1)
ProductPicture.create!(id: 6, name: "Warning picture", picture_type: "warning", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560785204/warning_d81lnc.png", product_id: 1)
ProductPicture.create!(id: 7, name: "Guide picture", picture_type: "guide", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775759/m2_wikldn.png", product_id: 1)

puts 'Creating User_products'
UserProduct.create!(id: 1, user_id: 1, product_id: 1, purchase_date: "2019-07-11")
UserProduct.create!(id: 2, user_id: 1, product_id: 2, purchase_date: "2017-07-11")
UserProduct.create!(id: 3, user_id: 1, product_id: 3, purchase_date: "2014-07-11", assembled: true)
UserProduct.create!(id: 4, user_id: 1, product_id: 4, purchase_date: "2012-07-11", assembled: true)
UserProduct.create!(id: 5, user_id: 1, product_id: 5, purchase_date: "2010-07-11", assembled: true)


