class CreateInviteToChannels < ActiveRecord::Migration
  def change
    create_table :invite_to_channels do |t|
      t.boolean :accept

      t.timestamps null: false
    end
  end
end
