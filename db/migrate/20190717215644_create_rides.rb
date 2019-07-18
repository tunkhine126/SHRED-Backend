class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.integer :user_id
      t.string :date
      t.string :description
      t.integer :trail_id

      t.timestamps
    end
  end
end
