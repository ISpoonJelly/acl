class Channel < ActiveRecord::Base
	has_many :users
	has_many :channel_messages
end
