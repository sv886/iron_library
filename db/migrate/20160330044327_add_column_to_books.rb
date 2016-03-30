class AddColumnToBooks < ActiveRecord::Migration
  def change
    add_column :books, :inventory, :integer
    add_column :books, :shipping_cost, :decimal
  end
end
