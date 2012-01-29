class ChangeOrganizations < ActiveRecord::Migration
  def up
    # rename_column(:organizations, :organization_name, :name)
    add_column :organizations, :user_id, :integer
  end

  def down
    # rename_column(:organizations, :name, :organization_name)
    remove_column :organizations, :user_id, :integer
  end
end
