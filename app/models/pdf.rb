class Pdf < ApplicationRecord
  belongs_to :product_medium, as: :mediable
end
