class AddReferenceToDb < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_products, :product, index: true, foreign_key: true

    add_reference :reviews, :product, index: true, foreign_key: true

    add_reference :product_pictures, :product, index: true, foreign_key: true

    add_reference :inspire_pictures, :product, index: true, foreign_key: true

    add_reference :product_media, :product, index: true, foreign_key: true

    add_reference :product_media, :mediable, polymorphic: true

    add_reference :interactable_images, :interactable, index: true, foreign_key: true
    
  end


end
