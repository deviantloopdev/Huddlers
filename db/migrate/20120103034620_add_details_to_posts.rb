class AddDetailsToPosts < ActiveRecord::Migration
#id
#author_id
#recipient_id
#group/friend/self bool
#body => text

  def change
    add_column :posts, :body, :string
    add_column :posts, :author_id, :integer 
    add_column :posts, :recipient_id, :integer
    add_column :posts, :friend_vs_group, :bool
    add_column :posts, :status_update, :bool
  end
end	
