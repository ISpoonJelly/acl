class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :post
    	t.string :tags
    	t.string :post_type
    	t.string :attachment
      	t.timestamps null: false
    end
  end
end
