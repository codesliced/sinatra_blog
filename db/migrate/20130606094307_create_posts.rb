class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.string :title, :null => false
      p.text :content, :null => false
      p.string :author, :null => false
      p.timestamps
    end

  end
end
