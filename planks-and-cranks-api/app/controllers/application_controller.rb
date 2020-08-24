class ApplicationController < ActionController::API

  def authenticate
    header = auth_header(request)
    check_token(header)
  end

  private

  def auth_header(request)
    auth_header = request.headers['Authorization']

    if !auth_header
      render json: { message: 'You need a token' }, status: :forbidden
    else
      auth_header
    end
  end
  
  def check_token(header)
    begin
      decoded_token = JWT.decode(
        header.split(' ')[1],
        'some special secret string'
      )

      user_id = decoded_token.first['user_id']
      @user = User.find(user_id)
    rescue
      render json: { message: "Tsk tsk, that's not your token!" }, status: :forbidden
    end
  end
end
