class ChangeFans < ActiveRecord::Migration
  def up
    change_table :fans do |t|
      t.references :post
    end
  end

  def down
    remove_column :fans, :creator_id
    remove_column :fans, :element_id
    remove_column :fans, :profile_id
  end
end
