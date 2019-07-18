class Following < ApplicationRecord
  belongs_to :user, touch: true, counter_cache: true
  belongs_to :followed_user, counter_cache: :followers_count, class_name: 'User'
end
