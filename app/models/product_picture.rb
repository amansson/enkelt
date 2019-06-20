class ProductPicture < ApplicationRecord
  belongs_to :product

  validates :name, :picture_type, :url, :product_id, presence: true

  # mount_uploader :url, PhotoUploader
  # uncomment to upload images


  def transform_image(cloudinary_filter)
    arr_parts = url.split("upload/")
    new_url = "#{arr_parts[0]}upload/#{cloudinary_filter}/#{arr_parts[1]}"
    return new_url
  end
end
