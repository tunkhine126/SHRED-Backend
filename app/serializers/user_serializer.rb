class UserSerializer < ActiveModel::Serializer
  attributes :username, :location, :id, :comments, :rides, :likes, :followed_users, :follower_users, :followers, :img_url, :bikes
end
