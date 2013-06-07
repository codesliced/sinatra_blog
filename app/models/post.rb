class Post < ActiveRecord::Base
  has_many :tagclouds
  has_many :tags, :through => :tagclouds
  validates :title, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true

  def tags=(tagnames)
    self.tags.clear
    tagnames.split(',').each do |t|
      tag = Tag.find_or_create_by_tag_name(t.strip)
      self.tags << tag
    end
  end
end
