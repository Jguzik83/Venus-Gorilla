class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.password == params[:password]
      session[:user_id] = user.id
      redirect_to surveys_path
    else
      redirect_to login_path
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path
    end
  end
end