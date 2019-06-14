class Product < ApplicationRecord
  has_many :reveiws
  has_many :user_products
  has_many :product_pictures
  has_many :inspire_pictures
  has_many :product_media
end
