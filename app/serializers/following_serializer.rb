class FollowingSerializer < ActiveModel::Serializer
  attributes :user_id, :followed_users, :follower_users
end