class Product < ApplicationRecord
  has_many :reviews
  has_many :user_products
  has_many :product_pictures

  validates :name, :description, :article_number, presence: true
  validates :icon, :image, :pdf, :video, presence: true

  # mount_uploader :icon, :image, PhotoUploader
   # mount_uploader :url, PhotoUploader 
  # uncomment to upload images
end
