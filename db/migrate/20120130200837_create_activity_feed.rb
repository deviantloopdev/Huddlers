class CreateActivityFeed < ActiveRecord::Migration
  def change
    create_table :activity do |t|
      t.timestamps
    end
  end
end
