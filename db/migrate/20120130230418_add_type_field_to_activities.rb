class AddTypeFieldToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :trait, :string
  end
end
