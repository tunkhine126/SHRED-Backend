class LikesController < ApplicationController
  
  def create
    if already_liked?
      flash[:notice] = "You can't like again"
    else
    @ride.likes.create(user_id: current_user.id)
    redirect_to ride_path(@ride)
  end

  def already_liked?
    Like.where(user_id: current_user.id, ride_id:
    params[:ride_id]).exists?
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to ride_path(@ride)
  end

  private
  def find_ride
    @ride = Ride.find(params[:ride_id])
  end

end
