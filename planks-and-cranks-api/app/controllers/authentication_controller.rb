class AuthenticationController < ApplicationController

  def login
    @user = User.find_by(username: params[:username])


    if !@user || !@user.authenticate(params[:password])
      render json: { message: 'Something is wrong with your Username or Password' }, status: :unauthorized
    else
      token = encode_token(@user)

      render json: { user: @user, token: token }, status: :ok
    end
  end

  def encode_token(user)
    JWT.encode(
      { user_id: user.id },
      'some special secret string'
    )
  end
end
