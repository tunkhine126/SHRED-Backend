class BikeSerializer < ActiveModel::Serializer
  attributes :user_id, :style, :name, :frameset, :img_url, :groupset, :wheelset, :tires, :suspension, :brakes
end
