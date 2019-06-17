class ProductPicture < ApplicationRecord
  belongs_to :product

  validates :name, :type, :url, :product_id, presence: true

  mount_uploader :url, PhotoUploader
end
