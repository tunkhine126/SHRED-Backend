class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :trail
  # has_many :comments
  # has_many :likes
end
