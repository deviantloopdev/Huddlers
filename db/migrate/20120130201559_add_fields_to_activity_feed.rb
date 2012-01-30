class AddFieldsToActivityFeed < ActiveRecord::Migration
  def change
    add_column :activities, :team_id, :integer
    add_column :activities, :organization_id, :integer
    add_column :activities, :image_id, :integer
    add_column :activities, :user_id, :integer
    
    add_column :activities, :team_name, :string
    add_column :activities, :organization_name, :string
    add_column :activities, :image_name, :string
    
    add_column :activities, :description, :string
    add_column :activities, :contact_number, :string
    add_column :activities, :street_address, :string
    add_column :activities, :city, :string
    add_column :activities, :state, :string
    add_column :activities, :zipcode, :string
    add_column :activities, :website, :string
  end
end
