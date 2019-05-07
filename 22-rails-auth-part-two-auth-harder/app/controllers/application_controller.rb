class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorize!
    if !logged_in?
      flash[:message] = "Sorry, you need to be logged in to do that."
      redirect_to login_path
    end
  end
end
