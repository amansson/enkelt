class UserProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :assembled, presence: true
  validates :assembled, inclusion: { in: [true, false] }
  validates :purchase_date, presence: true
end
