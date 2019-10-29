class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
   token = request.env["HTTP_AUTHORIZATION"]
    if  @user && token  && User.decode_token(token)
        render json: @user
    else
        render json: { errors: "Page not found"}, status: 404
    end
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: {message: "You have been authenticated #{@user.username} ",token: User.create_token(@user) }
    else
      render json: { errors: @user.errors.full_messages.uniq}, status: 500   #, status: "Please enter a valid email and password!"
    end
  end


  def destroy
    @user.destroy
  end



private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:email, :username, :password)
  end


end
