class ChangeOrganizations < ActiveRecord::Migration
  def up
    rename_column(:organizations, :organization_name, :name)
  end

  def down
    rename_column(:organizations, :name, :organization_name)
  end
end
