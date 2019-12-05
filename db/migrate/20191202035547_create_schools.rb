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

#TODO: prepare new collums for some abbreviations for some schools name
#TODO: prepare new collums for Japanese name for the school name

#School.create(name:"Seattle Central College",country_id:"1",link:"https://seattlecentral.edu/")
#School.create(name:"University of Washington",country_id:"1",link:"https://seattlecentral.edu/")
