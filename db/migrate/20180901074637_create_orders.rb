class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_name
      t.integer :order_amount
      t.integer :total_price

      t.timestamps
    end
  end
end
