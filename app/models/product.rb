class Product < ApplicationRecord
  has_many :reviews
  has_many :user_products
  has_many :product_pictures

  validates :name, :description, :article_number, presence: true
  validates :article_number, numericality: { only_integer: true }
  validates :icon, :image, :pdf, :video, presence: true

  mount_uploader :icon, :image, PhotoUploader
end
