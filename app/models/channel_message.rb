class ChannelMessage < ActiveRecord::Base
	belongs_to :channel, foreign_key: 'id'
	belongs_to :user, foreign_key: 'id'
end