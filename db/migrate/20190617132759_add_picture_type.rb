class AddPictureType < ActiveRecord::Migration[5.2]
  def change
    rename_column :product_pictures, :type, :picture_type
  end
end
