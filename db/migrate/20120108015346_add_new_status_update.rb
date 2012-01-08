class AddNewStatusUpdate < ActiveRecord::Migration
  def up
    add_column :posts, :status_update, :bool
  end

  def down
  end
end
