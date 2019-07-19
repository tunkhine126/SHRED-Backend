class CommentSerializer < ActiveModel::Serializer
  attributes :user_id, :ride_id, :date, :comment
end