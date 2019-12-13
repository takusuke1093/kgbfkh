class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :iso_code
      t.string :language
      t.timestamps
    end
  end
end


# Country.create(name:"America”,iso_code:”USA”,language:"English")
# Country.create(name:”Canada”,iso_code:”CAN”,language:"English")
# Country.create(name:”China”,iso_code:"CHN",language:"Chinese")



