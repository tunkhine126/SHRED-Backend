class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :type
      t.string :name
      t.string :img_url
      t.string :frameset
      t.string :groupset
      t.string :wheelset
      t.string :tires
      t.string :suspension
      t.string :brakes
      t.integer :user_id
      t.timestamps
    end
  end
end
