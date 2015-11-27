class Comment < ActiveRecord::Base
	belongs_to :post, foreign_key: 'id'
	belongs_to :user, foreign_key: 'id'
end
