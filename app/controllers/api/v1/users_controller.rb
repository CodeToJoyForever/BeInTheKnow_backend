class Api::V1::UsersController < ApplicationController

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

    @user = User.new(email: params[:email], password: params[:password])
    if @user.save
      render json: {message: "You have been authenticated #{@user.username} ",token: User.create_token(@user) }
    else
      render json:{
        errors: @user.errors.full_messages } #, status: "Please enter a valid email and password!"
    end
  end


  def destroy
    @user.destroy
  end

  private


    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email,:username, :password)
    end
end
