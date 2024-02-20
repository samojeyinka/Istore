class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :email
      t.text :address
      t.decimal :total_price

      t.timestamps
    end
  end
end
