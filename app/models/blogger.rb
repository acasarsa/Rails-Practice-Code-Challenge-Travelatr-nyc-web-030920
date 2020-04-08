class Blogger < ApplicationRecord
  has_many :posts

  validates :name, uniqueness: true
  validates :age, numericality: {greater_than: 0}
  validates :bio, length: {minimum: 30}

  # def most_liked_post
  #   self.posts.each do |like|
  #     likes
  #   end
  # end

  def most_popular_post
    self.posts.max_by {|post| post.likes}
  end
end

# Blogger.second.posts.max_by(2) {|post| post.likes}