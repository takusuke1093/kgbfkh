class Comments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
    t.text :body
    t.integer :school_id
    t.integer :user_id
    t.timestamps
   end
  end
 end