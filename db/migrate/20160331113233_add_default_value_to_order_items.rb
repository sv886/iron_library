class AddDefaultValueToOrderItems < ActiveRecord::Migration
  def change
    change_column :order_items, :shipped, :boolean, :default => false
    change_column :order_items, :quantity, :integer, :default => 0
    change_column :order_items, :shipping_cost, :decimal, :default => 0
    change_column :order_items, :price, :decimal, :default => 0
  end
end
