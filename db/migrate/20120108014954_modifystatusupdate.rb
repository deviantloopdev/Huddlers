class Modifystatusupdate < ActiveRecord::Migration
  def up
    remove_column :posts, :status_update?
  end

  def down
    add_column :posts, :status_update, :bool
  end
end
