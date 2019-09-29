class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    #verify_token(@user)
    #render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: {message: "You have been authenticated #{@user.username} ",token: User.create_token(@user) }
    else
      render json: { errors: @user.errors.full_messages }  #, status: "Please enter a valid email and password!"
    end
  end


  def destroy
    @user.destroy
  end



private

  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:email, :username, :password)
  end


end
