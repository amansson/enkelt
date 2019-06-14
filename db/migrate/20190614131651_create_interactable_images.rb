class CreateInteractableImages < ActiveRecord::Migration[5.2]
  def change
    create_table :interactable_images do |t|

      t.timestamps
    end
  end
end
