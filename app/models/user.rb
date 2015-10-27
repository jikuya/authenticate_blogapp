class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :comments
  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :post
end
