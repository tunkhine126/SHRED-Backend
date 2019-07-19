class BikeSerializer < ActiveModel::Serializer
  attributes :user_id, :type, :name, :frameset, :img_url, :groupset, :wheelset, :tires, :suspension, :brakes
end
