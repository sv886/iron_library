class OrderMailer < ApplicationMailer

  def send_email(user, order)
    @user = user
    @order = order
    mail to: @order.email, subject: 'Iron Library Order'
  end

end
