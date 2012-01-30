class AddFieldsToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :team_name, :string
    add_column :teams, :description, :string
  end
end
