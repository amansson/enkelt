class Product < ApplicationRecord
  has_many :reveiws
  has_many :user_products
  has_many :product_pictures
end
