class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  validate :that_born_on_is_not_in_the_future

  has_many :posts, foreign_key: 'id'
  has_many :comments, foreign_key: 'id'
  has_many :messages, foreign_key: 'id'
  
  has_many :friendships, foreign_key: 'id'
  has_many :friends, :through => :friendships, foreign_key: 'id'
  
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user, foreign_key: 'id'
  has_many :follow_posts, foreign_key: 'id'
  has_many :channels, foreign_key: 'id'
  has_many :invite_to_channels, foreign_key: 'id'
  has_many :channel_messages, foreign_key: 'id'


  def that_born_on_is_not_in_the_future 
    self.errors.add :date_of_birth, 'is in the future' 
      unless self.date_of_birth <= Date.today 
    end
  end

end