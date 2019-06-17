class ChangeDefaultValueBoolean < ActiveRecord::Migration[5.2]
  def change
    change_column_default :user_products, :assembled, false
  end
end
