class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, foreign_key: 'posts_id', class_name: 'Post'
end