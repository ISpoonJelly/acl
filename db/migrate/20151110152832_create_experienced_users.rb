class CreateExperiencedUsers < ActiveRecord::Migration
  def change
    create_table :experienced_users do |t|
    	t.string :experience
      	t.timestamps null: false
    end
  end
end
