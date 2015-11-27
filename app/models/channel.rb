class Channel < ActiveRecord::Base
	has_many :users, foreign_key: 'id'
	has_many :channel_messages, foreign_key: 'id'

	after_create :create_channel_message

	def create_channel_message
		
	end
end
