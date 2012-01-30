class CreateOrganizationsUsersJoin < ActiveRecord::Migration
  def up
    create_table 'organizations_users', :id => false do |t|
      t.column 'organization_id', :integer
      t.column 'product_id', :integer
    end
  end

  def down
    drop_table 'organizations_users'
  end
end
