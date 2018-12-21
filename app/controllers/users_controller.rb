class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  private
  def user_params
    params.require().permit(:username, :password, :email)
  end
end
