class Api::SessionsController < ApplicationController
  def welcome
    render json: {
      welcome: "your API has loaded"
    }
  end
    def create
      binding.pry
   
    end
  end
  

    def destroy
      session.destroy
      render json:{ notice: "You are logged out"}
    end
   




end