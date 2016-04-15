class Admin::UsersController < Admin::BaseController

  def new
    byebug
    @user = User.new
  end

  # def create
  #   @user = User.create( user_params )
  #   redirect_to user_path(@user)
  #
  # end

  def show

  end


  private
  def user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
