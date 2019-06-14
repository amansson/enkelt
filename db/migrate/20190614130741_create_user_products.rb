class CreateUserProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_products do |t|
      t.datetime :purchase_date
      t.boolean :assembled

      t.timestamps
    end
  end
end
