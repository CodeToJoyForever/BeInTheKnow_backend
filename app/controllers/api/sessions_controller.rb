class Api::SessionsController < ApplicationController
  def welcome
    render json: { welcome: "your API has loaded"}
  end
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: {message: "You have been authenticated #{@user.username} ",token: User.create_token(@user) }
    else 
      render json: { errors: "Your Username and Password do not match, please try again"} 
    end  
  end
     
end  