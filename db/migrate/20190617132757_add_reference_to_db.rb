class AddReferenceToDb < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_products, :product, index: true, foreign_key: true
    add_reference :user_products, :user, index: true, foreign_key: true

    add_reference :reviews, :product, index: true, foreign_key: true
    add_reference :reviews, :user, index: true, foreign_key: true

    add_reference :product_pictures, :product, index: true, foreign_key: true
  end
end
