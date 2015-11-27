class Friendship < ActiveRecord::Base
	belongs_to :user, foreign_key: 'id'
	belongs_to :friend, :class_name => "User", foreign_key: 'id'
end
