class Post < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :comments
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user
end
