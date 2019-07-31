class FollowingsController < ApplicationController
  skip_before_action :authorized

  def index
    @followings = Following.all
    render json: @followings
  end

  def new
    @following = Following.new
  end

  def create
    @following = Following.create(following_params)
    render json: @followings
  end

  def show
    @following = Following.find(params[:id])
    render json: FollowingSerializer.new(@following)
  end

  def destroy
    Following.find(params[:id]).destroy
    flash[:success] = "Unfollowed"
  end

  private
  def following_params
    params.require(:following).permit(:user_id, :followed_user_id)
  end

end