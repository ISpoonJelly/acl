class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.boolean :accept

      t.timestamps null: false
    end
  end
end
