class AddFieldsToTeams < ActiveRecord::Migration
  def up
    add_column :teams, :team_name, :string, :default=>""
    add_column :teams, :description, :string, :default=>""
  end
  
  def down
    remove_column :teams, :team_name, :string, :default=>""
    remove_column :teams, :description, :string, :default=>""
  end
end
