module SessionsHelper

  def logged_in?
      !!session[:user_id]
    end

    def require_login
      unless logged_in?
        flash[:notice] = "You must be logged in to view this page."
        redirect_to sessions_path
      end
    end

end