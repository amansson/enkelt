class CreateProductMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :product_media do |t|

      t.timestamps
    end
  end
end
