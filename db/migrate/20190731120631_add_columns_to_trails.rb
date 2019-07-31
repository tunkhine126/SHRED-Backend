class AddColumnsToTrails < ActiveRecord::Migration[5.2]
  def change
    add_column :trails, :name, :string
    add_column :trails, :type, :string
    add_column :trails, :summary, :string
    add_column :trails, :difficulty, :string
    add_column :trails, :stars, :integer
    add_column :trails, :starVotes, :integer
    add_column :trails, :location, :string
    add_column :trails, :url, :string
    add_column :trails, :imgSqSmall, :string
    add_column :trails, :imgSmall, :string
    add_column :trails, :imgSmallMed, :string
    add_column :trails, :imgMedium, :string
    add_column :trails, :length, :decimal
    add_column :trails, :ascent, :integer
    add_column :trails, :descent, :integer
    add_column :trails, :high, :integer
    add_column :trails, :low, :integer
    add_column :trails, :longitude, :decimal
    add_column :trails, :latitude, :decimal
    add_column :trails, :conditionStatus, :string
    add_column :trails, :conditionDetails, :string
    add_column :trails, :conditionDate, :string 
  end
end