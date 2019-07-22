class LikesController < ApplicationController
  
  def index
    @like = Like.all
    render json: @like  
  end

    def create
      if already_liked?
        flash[:notice] = "You can't like again"
      else
      @ride.likes.create(user_id: current_user.id)
      render json: @like
      end
    end

  def already_liked?
    Like.where(user_id: current_user.id, ride_id:
    params[:ride_id]).exists?
  end

  def show
    @like = Like.find(params[:id])
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
  end

  private

  def find_ride
    @ride = Ride.find(params[:ride_id])
  end

end
