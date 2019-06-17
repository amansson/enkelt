class ProductPicture < ApplicationRecord
  belongs_to :product

  validates :name, :picture_type, :url, :product_id, presence: true

  # mount_uploader :url, PhotoUploader 
  # uncomment to upload images
end
