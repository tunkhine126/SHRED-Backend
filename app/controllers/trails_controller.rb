require "open-uri"

class TrailsController < ApplicationController
    skip_before_action :authorized

    def trails_search
        lat = params[:lat].sub('!', '.')
        lon = params[:lon].sub('!', '.')
        url = "https://www.mtbproject.com/data/get-trails?lat=#{lat}&lon=#{lon}&maxResults=#{params[:max_results]}"
        api_key = "&key=#{ENV["TRAILS_API_KEY"]}"
        trails = JSON.parse(open(url + api_key).read)["trails"][0..100]
        sorted_trails = trails.sort_by{|t| t['stars']}.reverse

        render json: sorted_trails, status: :ok
    end

    def show
        begin @trail = Trail.find(params[:id])
            render json: @trail
        rescue
            render json: {status: "error", code: 404, message: "Trail doesn't exist!"}
        end
    end

    def create
      @trails = Trail.create(trails_params)
      render json: @trails
    end

    def index
        @trails = Trail.all 
        render json: @trails
    end
    
    private
    def trails_params
      params.require(:trail).permit(:api_index, :name, :type, :summary, :difficulty, :stars, :starVotes, :location, :url, :imgSqSmall, :imgSmall, :imgSmallMed, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude, :conditionStatus, :conditionDetails, :conditionDate, :user_id)
    end
end