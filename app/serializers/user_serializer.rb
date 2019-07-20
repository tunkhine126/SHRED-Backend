class UserSerializer < ActiveModel::Serializer
  attributes :username, :location, :bike_id, :id
end
