class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def require_login
      redirect_to root_path unless is_authenticated?
        # flash[:notice] = "You must be logged in to view this page."
    end

    def is_authenticated?
      !!session[:user_id]
    end


end
