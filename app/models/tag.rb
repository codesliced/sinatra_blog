class Tag < ActiveRecord::Base
  has_many :tagclouds
  has_many :posts, :through => :tagclouds


  # def find_posts_dance
  #   tags = Tag.where(:tag_name :"dance")
  #   tags.post
  # end




end
