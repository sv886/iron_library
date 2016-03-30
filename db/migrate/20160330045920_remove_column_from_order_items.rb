class RemoveColumnFromOrderItems < ActiveRecord::Migration
  def change
    remove_column :order_items, :product_id, :string
  end
end
