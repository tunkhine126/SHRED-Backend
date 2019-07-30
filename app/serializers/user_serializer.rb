class UserSerializer < ActiveModel::Serializer
  attributes :username, :location, :bikes, :id, :comments, :rides, :likes, :followings, :followed_users, :followers, :follower_users
end
