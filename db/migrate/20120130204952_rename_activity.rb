class RenameActivity < ActiveRecord::Migration
  def up
    rename_table :activity, :activities
  end

  def down
    rename_table :activities, :activity
  end
end
