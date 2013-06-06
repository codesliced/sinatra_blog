class Post < ActiveRecord::Base
  has_many :tagclouds
  has_many :tags, :through => :tagclouds
  validates :title, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true
end
