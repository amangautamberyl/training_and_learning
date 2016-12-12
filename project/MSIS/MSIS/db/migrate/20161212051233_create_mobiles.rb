class CreateMobiles < ActiveRecord::Migration[5.0]
  def change
    create_table :mobiles do |t|
      t.string :Name
      t.integer :Price
      t.timestamp :manufacturing_date
      t.integer :Imei_code
      # t.integer :Inventory
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
