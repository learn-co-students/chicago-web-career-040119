require 'pry'
class Api::V1::AuthController < ApplicationController


  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      token = issue_token(@user)
      render json: { jwt: token, user: @user }
    else
      render json: {error: "User not authenticated"}, status: 401
    end
  end

  def show
    token = request.headers["Authorization"]
    user = User.find_by(id: user_id)
    if user
      render json: { id: user.id, username: user.username }
    else
      render json: {error: "Invalid Token"}, status: 401
    end
  end



end
