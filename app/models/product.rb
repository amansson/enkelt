class Product < ApplicationRecord
  has_many :reviews
  has_many :user_products
  has_many :product_pictures

  validates :name, :description, :article_number, presence: true
  validates :icon, :image, :pdf, :video, presence: true

  # mount_uploader :icon, :image, PhotoUploader
   # mount_uploader :url, PhotoUploader 
  # uncomment to upload images

  def all_guide_pictures
    pictures = {}
    pictures[:guide] = product_pictures.where(picture_type: 'guide')
    pictures[:warning] = product_pictures.where(picture_type: 'warning')
    pictures[:tool] = product_pictures.where(picture_type: 'tool')
    pictures[:overview] = product_pictures.where(picture_type: 'overview')
    pictures[:screw] = product_pictures.where(picture_type: 'screw')
    return pictures
  end

  def all_inspiration_pictures
    return product_pictures.where(picture_type: 'inspiration')
  end

end
