class AlterActivitiesTable < ActiveRecord::Migration
  def change
    add_column :activities, :user_id, :string
    
  end
end
