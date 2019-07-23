class UserSerializer < ActiveModel::Serializer
  attributes :username, :location, :bike_id, :id, :comments, :rides, :likes, :followings, :followed_users, :followers, :follower_users
end
