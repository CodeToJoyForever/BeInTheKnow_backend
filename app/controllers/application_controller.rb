class ApplicationController < ActionController::API
 def verify_token(data)
  token = request.env["HTTP_AUTHORIZATION"]
    if  token && User.decode_token(token)
   # render json: { message:"you are logged in",info: token}
    else
  render json: { errors: @user.errors.full_messages, status: 404 } 
    end
  end


end
