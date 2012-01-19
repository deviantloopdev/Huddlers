class ChangePosts < ActiveRecord::Migration
  def up
    change_table :posts do |t|
      t.references :user
    end
  end

  def down
      remove_column :posts, :author_id
      remove_column :posts, :recipient_id
   
  end
end
