class AlterUsers < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string, :default=>""
    add_column :users, :last_name, :string, :default=>""
    add_column :users, :height_ft, :integer
    add_column :users, :height_in, :integer
    add_column :users, :weight, :integer
    add_column :users, :age, :integer
    add_column :users, :city, :string, :default=>""
  end

  def down
    remove_column :users, :first_name, :string, :default=>""
    remove_column :users, :last_name, :string, :default=>""
    remove_column :users, :height_ft, :integer
    remove_column :users, :height_in, :integer
    remove_column :users, :weight, :integer
    remove_column :users, :age, :integer
    remove_column :users, :city, :string 
  end
end
