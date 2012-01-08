class AddColumnsFans < ActiveRecord::Migration
  def up
		add_column :fans, :type_of_content, :string
		add_column :fans, :creator_id, :integer
		add_column :fans, :element_id, :integer
		add_column :fans, :profile_id, :integer
 
  end

  def down
  end
end
  7 #id
  8 #date_created
  9 #type of content, eg picture, post,
 10 #user_id of person who made it
 11 #id of element it belongs to
