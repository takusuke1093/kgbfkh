class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.integer :country_id
      t.string :name
      t.string :abbreviation
      t.string :school_type
      t.string :image
      t.string :link
      t.text :description
      t.timestamps
    end
  end
end

#TODO: prepare new collums for some abbreviations for some schools name
#TODO: prepare new collums for Japanese name for the school name

#School.create(name:"Seattle Central College",country_id:"1",school_type:"College",link:"https://seattlecentral.edu/",abbreviation:"SCC")
#School.create(name:"University of Washington",country_id:"1",school_type:"University",link:"https://www.washington.edu/",abbreviation:"UW")
