class CreateInspirePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :inspire_pictures do |t|
      t.string :url

      t.timestamps
    end
  end
end
