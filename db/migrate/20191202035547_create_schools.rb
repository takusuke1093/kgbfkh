class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.integer :country_id
      t.string :name
      t.string :type
      t.string :image
      t.string :link
      t.text :description
      t.timestamps
    end
  end
end
