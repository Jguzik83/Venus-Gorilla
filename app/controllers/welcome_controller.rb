class WelcomeController < ApplicationController

  def index
    if is_authenticated?
      redirect_to surveys_path
    end
  end

end
