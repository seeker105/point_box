class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user &&  @user.authenticate(params[:session][:password])
      session[:user_id] = @user[:id]
      if @user.admin?
        redirect_to admin_users_path
      else
        redirect_to user_path(@user)
      end
    else
      render :new
    end
  end
  # byebug

end
