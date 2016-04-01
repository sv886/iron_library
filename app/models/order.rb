class Order < ActiveRecord::Base

  has_many :order_items
  belongs_to :user

  def total_price
    order_items.map { |order_item| order_item.total_price }.sum
  end

end
