class FollowPost < ActiveRecord::Base
	belongs_to :user, foreign_key: 'id'
	belongs_to :post, foreign_key: 'id'


end
