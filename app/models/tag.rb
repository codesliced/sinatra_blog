class Tag < ActiveRecord::Base
  has_many :tagclouds
  has_many :posts, :through => :tagclouds
end
