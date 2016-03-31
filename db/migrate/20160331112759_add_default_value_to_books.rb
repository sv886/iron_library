class AddDefaultValueToBooks < ActiveRecord::Migration
  def change
    change_column :books, :inventory, :integer, :default => 0
    change_column :books, :shipping_cost, :decimal, :default => 0
    change_column :books, :price, :integer, :default => 0
  end
end
