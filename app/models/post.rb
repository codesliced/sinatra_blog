class Post < ActiveRecord::Base
  has_many :tagclouds
  has_many :tags, :through => :tagclouds
end
