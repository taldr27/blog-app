class User < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many :posts

  def latest_posts
    posts.order(created_at: :desc).limit(3)
  end
end