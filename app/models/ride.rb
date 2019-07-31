class Ride < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_one :trail
end
