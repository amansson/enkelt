class AddNameToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :product_pictures, :name, :string
    add_column :product_pictures, :type, :string
    add_column :product_pictures, :url, :string
    
  end
end
