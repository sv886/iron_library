class CartsController < ApplicationController

  before_action do
    @current_user = User.find_by id: session[:user_id]
    if @current_user.blank?
      redirect_to login_path
    end
  end

  def remove_from_cart
  end

  def add_to_cart
    #cart is building order
    @product = Product.find_by id: params[:product_id]
    # get order inside of current session
    # order = Order.find_by id: session[:order_id]
    # want the order to show if we sign elsewhere after adding to cart from another device
    order = Order.find_by status: 'cart', user_id: @current_user.id
    if order.nil?
      order = Order.new
      order.user = @current_user
      order.purchased_at = Time.now
      order.save!
    end

    # if we already have an order item for this order / product
    order_item = OrderItem.find_by order_id: order.id, product_id: @product.id
    if order_item.present?
      # increment quantity
      order_item.quantity = order_item.quantity + 1
    else
      # do what we did
      order_item = OrderItem.new
      order_item.order = order
      order_item.product = @product # what do I replace this with? It's nil
      order_item.price = @product.price
      order_item.shipping_cost = 0
      order_item.quantity = 1
    end
    order_item.save!

    # this was a POST, so we need to redirect somewhere
    redirect_to cart_path
  end

  def view
  end
end
