class Message < ActiveRecord::Base
	belongs_to :user, foreign_key: 'id'
	belongs_to :receiver, :class_name => "User", foreign_key: 'id'
end
