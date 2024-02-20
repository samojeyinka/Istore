class AddCartRefToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :cart, null: false, foreign_key: true
  end
end
