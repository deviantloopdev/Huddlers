class AddColumnsComments < ActiveRecord::Migration
  def up
#id
#date_created
#body
#user_id of person who made it
#element_id of post it belongs to
#profile_id
		add_column :comments, :type_of, :string
		add_column :comments, :creator_id, :integer
		add_column :comments, :element_id, :integer
		add_column :comments, :profile_id, :integer
	end

  def down
    remove_column :comments, :type_of, :string
    remove_column :comments, :creator_id, :integer
    remove_column :comments, :element_id, :integer
    remove_column :comments, :profile_id, :integer
  end
end
