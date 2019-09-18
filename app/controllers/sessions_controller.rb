class SessionsController < ApplicationController
  def welcome
    render json: {
      welcome: "your API has loaded"
    }
  end
    def create
      binding.pry
    #   @user = User.find_by(email: params[:session][:email])
    # if@user && @user.authenticate(params[:session][:password])
    #   session[:user_id] = @user.id
    #   render json: @user
    # else 
    #   render json:{
    #     error: "Your Username and Password do not match"
    #   }
    
    end
  end
  

    def destroy
      session.destroy
      render json:{ notice: "You are logged out"}
    end
   




end