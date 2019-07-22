class RidesController < ApplicationController
  
  def index
    @ride = Ride.all
    render json: @ride
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.create(rides_params)
    render json: @ride
  end

  def edit
    @ride = Ride.find(params[:id])
  end

  def show
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
