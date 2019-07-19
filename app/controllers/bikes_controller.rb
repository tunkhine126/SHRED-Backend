class BikesController < ApplicationController

  def new
    @bike = Bike.new
  end

  def create
    @user = User.find(params[:user_id])
    @bike = @user.bike.create(bike_params)
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def destroy
    Bike.find(params[:id]).destroy
    flash[:success] = "Bike deleted"
  end
  
  private
  def bike_params
    params.require(:bike).permit(:type, :name, :img_url, :frameset, :groupset, :wheelset, :tires, :suspension, :brakes, :user_id)
  end
end

end
