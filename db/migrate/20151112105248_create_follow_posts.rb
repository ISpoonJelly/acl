class CreateFollowPosts < ActiveRecord::Migration
  def change
    create_table :follow_posts do |t|

      t.timestamps null: false
    end
  end
end
