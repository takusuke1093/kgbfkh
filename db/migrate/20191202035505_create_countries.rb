class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :iso_code
      t.integer :country_id
      t.string :language
      t.timestamps
    end
  end
end


# Country.create(name:"America”,country_id:”1”,iso_code:”USA”,language:"English")
# Country.create(name:”Canada”,country_id:”2”,iso_code:”CAN”,language:"English")
# Country.create(name:”China”,country_id:”3”,iso_code:"CHN",language:"Chinese")