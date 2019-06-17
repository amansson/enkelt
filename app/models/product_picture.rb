class ProductPicture < ApplicationRecord
  belongs_to :product

  validates :name, :type, :url, :product_id, presence: true
  validates :product_id, numericality: { only_integer: true }

  mount_uploader :url, PhotoUploader
end
