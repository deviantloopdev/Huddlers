class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|

      t.timestamps
    end
  end
end
