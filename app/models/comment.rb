class Comment < ActiveRecord::Base

	belongs_to :user
  has_many :fans
end

#id
#date_created
#body
#user_id of person who made it
#post_id of post it belongs to

