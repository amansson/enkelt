class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
end
