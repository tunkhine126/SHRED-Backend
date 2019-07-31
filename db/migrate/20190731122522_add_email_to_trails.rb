class AddEmailToTrails < ActiveRecord::Migration[5.2]
  def change
    add_column :trails, :ride_id, :integer
  end
end
