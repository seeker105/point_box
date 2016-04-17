class Admin::UsersController < Admin::BaseController

  def new
    # byebug
    @user = User.new
  end

  def create
    @user = User.create( user_params )
    redirect_to admin_users_path

  end

  def index
    # byebug
    @basic_users = User.where(role: 0)
  end


  private
  def user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
