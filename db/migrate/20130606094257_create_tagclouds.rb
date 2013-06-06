class CreateTagclouds < ActiveRecord::Migration
  def change
    create_table :tagclouds do |tc|
      tc.integer :post_id
      tc.integer :tag_id
    end
  end
end
