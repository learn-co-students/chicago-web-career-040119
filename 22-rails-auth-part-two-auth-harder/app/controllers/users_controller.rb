class UsersController < ApplicationController
  def new
    @current_user = User.find(session[:user_id]) if session[:user_id]
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save # runs valid anyway so I don't need a separate line
      session[:user_id] = @user.id
      flash[:message] = "You're logged in, #{@user.username}! Niiiiiice"
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  def show
    find_user
  end

  def edit
    if find_user
      if @user.id != current_user.id
        redirect_to user_path(current_user)
      end
    else
      flash[:message] = "That user does not exist (right now)"
      redirect_to login_path
    end
    # implicitly render edit.html.erb from view folder with matching name

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

  def find_user
    @user = User.find_by_id(params[:id])
  end
end
