class RidesController < ApplicationController
  
  def create
    @user = User.find(params[:id])
    @ride = @user.rides.create(rides_params)
    redirect_to user_path(@user)
  end

  def edit
    @ride = Ride.find(params[:id])
  end

  def destroy
    Ride.find(params[:id]).destroy
    flash[:success] = "Ride deleted"
  end

  private
  def rides_params
    params.require(:ride).permit(:user_id, :created_at, :description, :trail_id)
  end

end
