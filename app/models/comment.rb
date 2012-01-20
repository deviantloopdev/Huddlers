class Comment < ActiveRecord::Base

	belongs_to :user
  has_many :fans
  
  attr_accessible :body, :post_id, :type_of
end
=begin

 create_table "comments", :force => true do |t|
 17     t.datetime "created_at"
 18     t.datetime "updated_at"
 19     t.text     "body"
 20     t.string   "type_of"
 21     t.integer  "post_id

=end
#id
#date_created
#body
#user_id of person who made it
#post_id of post it belongs to

