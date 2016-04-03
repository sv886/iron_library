class CheckoutController < ApplicationController

  before_action do
    @current_user = User.find_by id: session[:user_id]
    if @current_user.blank?
      redirect_to login_path
    end
  end

  def start
  end

  def process
    @order = Order.find_by status: 'cart', user_id: @current_user.id
    OrderMailer.send_email(@order, @current_user).deliver_now
    redirect_to root_path
  end

  def receipt
  end
end
