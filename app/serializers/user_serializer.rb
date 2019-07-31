class UserSerializer < ActiveModel::Serializer
  attributes :username, :location, :email, :id, :img_url, :trails, :bikes, :followed_users, :follower_users, :followers
end
