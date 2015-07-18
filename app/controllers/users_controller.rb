class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    session[:user_id] = user.user_id
    if user.save
      redirect_to surveys_path
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :password, :email)
    end
end
