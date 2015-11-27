class Post < ActiveRecord::Base
	belongs_to :user, foreign_key: 'id'
	has_many :comments, foreign_key: 'id'
	has_many :follow_posts, foreign_key: 'id'

	scope :featured_post, -> {where(post_type: "Accomodation") }
end
