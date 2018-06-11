class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:notice] = "User was updated"
    else
      flash[:notice] = "User was not updated"
    end
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :username, :last_name, :age, :occupation)
  end
end
