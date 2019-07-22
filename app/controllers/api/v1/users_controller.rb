class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def index
    @user = User.all
    render json: @user
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
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
    render json: @user
  end

  def show
    @user = User.find(params[:id])
    render json: UserSerializer.new(@user)
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :location)
  end
end
