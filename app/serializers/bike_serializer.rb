class BikeSerializer < ActiveModel::Serializer
  attributes :user_id, :category, :name, :frameset, :img_url, :groupset, :wheelset, :tires, :suspension, :brakes
end
