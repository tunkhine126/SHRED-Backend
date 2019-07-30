class UserSerializer < ActiveModel::Serializer
  attributes :username, :location, :email, :id, :comments, :rides, :likes, :followed_users, :follower_users, :followers, :img_url, :bikes
end
