class AddIndexToTrails < ActiveRecord::Migration[5.2]
  def change
    add_column :trails, :api_index, :integer
  end
end
