class User < ApplicationRecord
  has_many :followings
  has_many :followed_users, through: :followings

  has_many :followers, foreign_key: :followed_user_id, class_name: 'Following'
  has_many :follower_users, through: :followers, source: :user
  has_many :bikes

  has_many :comments
  has_many :likes
  has_many :trails

  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
end
