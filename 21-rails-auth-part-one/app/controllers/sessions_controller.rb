class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:username]
    user = User.find_by(username: username)
    # Using the && so I don't need a nested 'if/else' anymore
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to signup_path
    else
      @errors = ["Invalid credentials, please try again"]
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to signup_path
  end
end
