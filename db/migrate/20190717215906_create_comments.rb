class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :ride_id
      t.string :date
      t.string :comment

      t.timestamps
    end
  end
end
