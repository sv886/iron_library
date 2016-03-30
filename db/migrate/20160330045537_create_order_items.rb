class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.boolean :shipped
      t.integer :quantity
      t.decimal :shipping_cost
      t.decimal :price

      t.timestamps null: false
    end
  end
end
