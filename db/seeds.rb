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
# User.destroy_all

# puts 'Creating users'
# User.create!(id: 1, email: "billiej@gmail.com", password: "123456").save(validate: false)
# User.create!(id: 2, email: "chowu@gmail.com", password: "123456").save(validate: false)
# User.create!(id: 3, email: "peterj@gmail.com", password: "123456").save(validate: false)
# User.create!(id: 4, email: "andreasj@gmail.com", password: "123456").save(validate: false)
# User.create!(id: 5, email: "fionak@gmail.com", password: "123456").save(validate: false)
# User.create!(id: 6, email: "ranok@gmail.com", password: "123456").save(validate: false)

puts 'Creating Products'
Product.create!(id: 1, name: "Malm", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560853520/malm_ico_uo9vc2.jpg", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560951906/img_malm_drawer_avcr4c.png", pdf: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560776545/malm_pdf_tolpxc.pdf", video: "https://www.youtube.com/watch?v=37v96zMllFA")
Product.create!(id: 2, name: "Hasselvika", description: "6-drawer chest, gray-beige", article_number: "604.217.38", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560950788/ico_hasselvika_drawer_mjkfsv.jpg", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560776374/hasselvika_img_fjot9o.webp", pdf: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560776422/hasselvika_pdf_qphpve.pdf", video: "show-video")
Product.create!(id: 3, name: "Malm", description: "Bed frame, high, black-brown, Luröy", article_number: "690.094.75", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560850109/ico_malm_bed_xdramx.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560850255/img_malm_bed_g2q4vh.webp", pdf: "show-pdf", video: "show-video")
Product.create!(id: 4, name: "Brimnes", description: "Cabinet with doors, black", article_number: "803.006.60", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560850672/ico_brimnes_cabinet_lhkhu6.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560850865/img_brimnes_cabinet_qu4uqi.webp", pdf: "show-pdf", video: "show-video")
Product.create!(id: 5, name: "Brimnes", description: "Daybed with 2 drawers/2 mattresses, white, Meistervik firm", article_number: "891.300.36", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560851095/ico_brimnes_bed_tlptol.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560851109/img_brimnes_bed_knt5kv.webp", pdf: "show-pdf", video: "show-video")
Product.create!(id: 6, name: "Hemnes", description: "6-drawer chest, medium brown", article_number: "403.924.78", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560950450/ico_hemnes_drawer_i1pzsz.jpg", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560950614/img_hemnes_drawer.png", pdf: "show-pdf", video: "show-video")
Product.create!(id: 7, name: "Ingolf", description: "Chair, white", article_number: "701.032.50", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560851246/ico_ingolf_chair_xe3sqk.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560851392/img_ingolf_chair_cuuafk.webp", pdf: "show-pdf", video: "show-video")
Product.create!(id: 8, name: "Tarva", description: "Bed frame, pine", article_number: "702.612.68", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560851520/ico_tarva_bed_ranukt.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560951119/img_tarva_bed_e9s6xc.png", pdf: "show-pdf", video: "show-video")
Product.create!(id: 9, name: "Hemnes", description: "Bed frame, black-brown, Espevär", article_number: "792.106.27", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560851709/ico_hemnes_bed_yx9no4.webp", image: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560851719/img_hemnes_bed_cjcid7.jpg", pdf: "show-pdf", video: "show-video")
Product.create!(id: 10, name: "Tarva", description: "4-drawer chest, black-brown", article_number: "603.604.62", icon: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560782408/ico_tarva3_mrmv8p.webp", image: "image-url", pdf: "show-pdf", video: "show-video")

puts 'Creating reviews'
Review.create!(id: 1, user_id: 1, rating: 5, content: "Review1 some review content", product_id: 1)
Review.create!(id: 2, user_id: 2, rating: 1, content: "Review2 some review content", product_id: 2)
Review.create!(id: 3, user_id: 3, rating: 2, content: "Review3 some review content", product_id: 3)
Review.create!(id: 4, user_id: 4, rating: 3, content: "Review4 some review content", product_id: 4)
Review.create!(id: 5, user_id: 5, rating: 4, content: "Review5 some review content", product_id: 1)


puts 'Product_pictures'
ProductPicture.create!(id: 1, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560874512/inspire_malm_bed_ebapvj.webp", product_id: 3)
ProductPicture.create!(id: 2, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560874811/inspire_brimnes_bed_l8bd5s.png", product_id: 5)
# ProductPicture.create!(id: 3, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872530/inspirational3_qqmcc7.jpg", product_id: 2)
# ProductPicture.create!(id: 4, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872530/inspirational2_rskgar.jpg", product_id: 2)
# ProductPicture.create!(id: 5, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872530/inspirational7_tr0ftt.jpg", product_id: 2)
# ProductPicture.create!(id: 6, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872530/inspirational5_j91mxa.jpg", product_id: 2)
# ProductPicture.create!(id: 7, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872531/inspirational11_vfmbk2.jpg", product_id: 2)
# ProductPicture.create!(id: 8, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872531/inspirational12_hawadc.jpg", product_id: 2)
# ProductPicture.create!(id: 9, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872531/inspirational9_ds95m4.jpg", product_id: 2)
# ProductPicture.create!(id: 10, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872531/inspirational8_qbkq2i.jpg", product_id: 2)
# ProductPicture.create!(id: 11, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872531/inspirational15_wwfqij.jpg", product_id: 2)
# ProductPicture.create!(id: 12, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872531/inspirational16_mrfm3m.jpg", product_id: 2)
# ProductPicture.create!(id: 13, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872531/inspirational13_nvsps1.jpg", product_id: 2)
# ProductPicture.create!(id: 14, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872530/inspirational1_hzhozz.jpg", product_id: 2)
# ProductPicture.create!(id: 15, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872531/inspirational14_aqr6td.jpg", product_id: 2)
# ProductPicture.create!(id: 16, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872532/inspirational17_yw6ywu.jpg", product_id: 2)
# ProductPicture.create!(id: 17, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872532/inspirational18_dwyreh.jpg", product_id: 2)
# ProductPicture.create!(id: 18, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872532/inspirational19_gi8d4s.jpg", product_id: 2)
# ProductPicture.create!(id: 19, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872532/inspirational20_d8pwpz.jpg", product_id: 2)
# ProductPicture.create!(id: 20, name: "Inspire picture", picture_type: "inspiration", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560872532/inspirational10_dw03on.png", product_id: 2)
ProductPicture.create!(id: 22, name: "Guide picture", picture_type: "guide", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775754/m1_cfqoqq.png", product_id: 1)
ProductPicture.create!(id: 23, name: "Screw picture", picture_type: "screw", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775759/m2_wikldn.png", product_id: 1)
ProductPicture.create!(id: 24, name: "Tool picture", picture_type: "tool", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775759/m2_wikldn.png", product_id: 1)
ProductPicture.create!(id: 25, name: "Overview picture", picture_type: "overview", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775759/m2_wikldn.png", product_id: 1)
ProductPicture.create!(id: 26, name: "Warning picture", picture_type: "warning", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560785204/warning_d81lnc.png", product_id: 1)
ProductPicture.create!(id: 27, name: "Guide picture", picture_type: "guide", url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560775759/m2_wikldn.png", product_id: 1)

puts 'Creating User_products'
UserProduct.create!(id: 1, user_id: 1, product_id: 1, purchase_date: "2019-07-11")
UserProduct.create!(id: 2, user_id: 1, product_id: 2, purchase_date: "2017-07-11")
UserProduct.create!(id: 3, user_id: 1, product_id: 3, purchase_date: "2014-07-11", assembled: true)
UserProduct.create!(id: 4, user_id: 1, product_id: 4, purchase_date: "2012-07-11", assembled: true)
UserProduct.create!(id: 5, user_id: 1, product_id: 5, purchase_date: "2010-07-11", assembled: true)


