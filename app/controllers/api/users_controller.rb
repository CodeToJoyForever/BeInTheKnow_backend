class Api::UsersController < ApplicationController


 
  def show
     #verify_token(@user)
    #render json: @user
  end

  # POST /users
  def create
    
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