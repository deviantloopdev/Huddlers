class ChangeOrgsUsers < ActiveRecord::Migration
  def change
    change_table :organizations_users, :id => false do |t|
      t.references :organization, :user
    end
  end
end
