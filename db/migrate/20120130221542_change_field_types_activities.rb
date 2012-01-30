class ChangeFieldTypesActivities < ActiveRecord::Migration
  def change
    change_column :activities, :user_id, :integer
    change_column :activities, :organization_id, :integer
    change_column :activities, :image_id, :integer
    change_column :activities, :team_id, :integer
  end
end
