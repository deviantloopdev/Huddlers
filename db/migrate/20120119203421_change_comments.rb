class ChangeComments < ActiveRecord::Migration
  def up
  change_table :comments do |t|
    t.references :post
  end

  end

  def down
    remove_column :comments, :creator_id
    remove_column :comments, :element_id
    remove_column :comments, :profile_id
  end
end
