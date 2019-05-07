class UsersController < ApplicationController
  def new
    @current_user = User.find(session[:user_id]) if session[:user_id]
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save # runs valid anyway so I don't need a separate line
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
