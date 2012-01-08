class CreateHuddlersCards < ActiveRecord::Migration
  def change
    create_table :huddlers_cards do |t|

      t.timestamps
    end
  end
end
