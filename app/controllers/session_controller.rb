class SessionController < ApplicationController
  def new
  end

  def create
    email = params[:email]
    password = params[:password]
    #get it
    @user = User.find_by email: email
    # set it
    if @user.password == password
      session[:user_id] = @user.id
    #redirect it
      redirect_to root_path
    else
      render :new
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path
  end
end
