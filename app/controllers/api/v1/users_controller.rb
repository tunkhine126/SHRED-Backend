class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index
    @users = User.all
    render json: @users
  end

  def profile
    render json: { user: UserSerializer.new(@user) }, status: :accepted
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'Uh oh..failed to create user' }, status: :not_acceptable
    end
  end

  def edit
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user
    else 
      render json: { error: 'Uh oh..failed to edit user' }, status: :not_acceptable
    end
  end

  def show
    @user = User.find(params[:id])
    if @user.update(user_params)
    render json: UserSerializer.new(@user)
    else 
    render json: { error: 'User does not exist. PLease try again' }, status: :not_acceptable
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :location, :img_url)
  end
end
