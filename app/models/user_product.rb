class UserProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :purchase_date, presence: true
end
