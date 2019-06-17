class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :article_number
      t.string :icon
      t.string :image
      t.string :pdf
      t.string :video

      t.timestamps
    end
  end
end
