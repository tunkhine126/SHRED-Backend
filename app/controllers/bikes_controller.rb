class BikesController < ApplicationController

  def index
    @bike = Bike.all
    render json: @bike
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
    params.require(:bike).permit(:style, :name, :img_url, :frameset, :groupset, :wheelset, :tires, :suspension, :brakes, :user_id)
  end

end

