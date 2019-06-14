class ProductMedium < ApplicationRecord
  belongs_to :product
  belongs_to :mediable, polymorphic: true
end
