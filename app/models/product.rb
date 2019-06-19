class Product < ApplicationRecord
  has_many :reviews
  has_many :user_products
  has_many :product_pictures

  validates :name, :description, :article_number, presence: true
  validates :icon, :image, :pdf, :video, presence: true

  include PgSearch
  
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  
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
