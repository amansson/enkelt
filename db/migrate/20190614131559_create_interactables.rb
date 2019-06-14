class CreateInteractables < ActiveRecord::Migration[5.2]
  def change
    create_table :interactables do |t|

      t.timestamps
    end
  end
end
