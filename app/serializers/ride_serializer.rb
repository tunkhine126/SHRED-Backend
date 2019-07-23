class RideSerializer < ActiveModel::Serializer
  attributes :user_id, :date, :description, :trail_id, :comments, :likes
end
