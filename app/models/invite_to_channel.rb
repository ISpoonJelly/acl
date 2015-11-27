class InviteToChannel < ActiveRecord::Base
	belongs_to :user, foreign_key: 'id'
	belongs_to :invitee, :class_name "User", foreign_key: 'id'
end
