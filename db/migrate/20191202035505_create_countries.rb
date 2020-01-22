class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :iso_code
      t.string :language
      t.string :japanese_name
      t.timestamps
    end
  end
end


# Country.create(name:"America",iso_code:"USA",japanese_name:"アメリカ",language:"English")
# Country.create(name:"Australia",iso_code:"AUS",japanese_name:"オーストラリア",language:"English")
# Country.create(name:"United_Kingdom",iso_code:"GBR",japanese_name:"イギリス",language:"English")
# Country.create(name:"Malaysia",iso_code:"MYS",japanese_name:"マレーシア",language:"English")



