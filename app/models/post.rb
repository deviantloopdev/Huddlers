class Post < ActiveRecord::Base
  has_many :comments #, :fans

  #To make sure that it is not an empty post
  validates_presence_of :body
  
  #Find out where the post is being made ie in a group/friend/status_update
  belongs_to :user
  has_one :user
  
  #if user and recipient are the same then it is a status update
  attr_accessible :body, :user, :recipient
end

#id
#author_id
#recipient_id
#group/friend/self bool
#body => text
#private?
