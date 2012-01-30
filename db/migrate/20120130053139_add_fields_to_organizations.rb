class AddFieldsToOrganizations < ActiveRecord::Migration
  def up
    add_column :organizations, :description, :string, :default=>""
    add_column :organizations, :contact_number, :string, :default=>""
    add_column :organizations, :street_address, :string, :default=>""
    add_column :organizations, :city, :string, :default=>""
    add_column :organizations, :state, :string, :default=>""
    add_column :organizations, :zipcode, :string, :default=>""
    add_column :organizations, :website, :string, :default=>""     
  end
  
  def down
    remove_column :organizations, :description, :string, :default=>""
    remove_column :organizations, :contact_number, :string, :default=>""
    remove_column :organizations, :city, :string, :default=>""
    remove_column :organizations, :state, :string, :default=>""
    remove_column :organizations, :zipcode, :string, :default=>""
    remove_column :organizations, :website, :string, :default=>""
  end
end
