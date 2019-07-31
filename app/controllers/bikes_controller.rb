class BikesController < ApplicationController
  skip_before_action :authorized

  def index
    @bikes = Bike.all
    render json: @bikes
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.create(bike_params)
    render json: @bike
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def show
    @bike = Bike.find(params[:id])
    render json: BikeSerializer.new(@bike)
  end

  def destroy
    Bike.find(params[:id]).destroy
    flash[:success] = "Bike deleted"
  end
  
  private
  def bike_params
    params.require(:bike).permit(:category, :name, :img_url, :frameset, :groupset, :wheelset, :tires, :suspension, :brakes, :user_id)
  end

end

