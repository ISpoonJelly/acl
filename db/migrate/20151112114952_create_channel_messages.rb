class CreateChannelMessages < ActiveRecord::Migration
  def change
    create_table :channel_messages do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
