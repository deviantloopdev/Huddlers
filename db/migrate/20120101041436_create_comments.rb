class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, :picture

      #body of the comment
      t.text "body"
      #ID of the element who got commented
      t.integer "id"      
      t.timestamps
    end
  end
end
