class UsersController < ApplicationController
  before_action :authenticate, only: %i[index show update destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users, include: :listings
  end

  # GET /users/1
  def show
    render json: { user: @user, listings: @user.listings }
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save!
      token = JWT.encode(
        { user_id: @user.id },
        'some special secret string'
      )
      render json: { user: @user, token: token }, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: { user: @user }
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:name, :username, :password, :email_address)
    end
end
