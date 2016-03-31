class AddDefaultValueToOrders < ActiveRecord::Migration
  def change
    change_column :orders, :status, :string, :default => 'cart'
  end
end
