class CheckoutController < ApplicationController

  before_action do
    @current_user = User.find_by id: session[:user_id]
    if @current_user.blank?
      redirect_to login_path
    end
  end

  def start
     @order = Order.find_by status: 'cart', user_id: @current_user.id
  end
  # 
  # def process
  # end

  def receipt
  end
end
