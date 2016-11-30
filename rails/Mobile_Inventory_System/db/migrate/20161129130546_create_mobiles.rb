class CreateMobiles < ActiveRecord::Migration[5.0]
  def change
    create_table :mobiles do |t|
    	t.string :mobile_name
    	t.integer :price
    	t.integer :Imei_code
    	t.integer :Inventory
      t.timestamps
    end
  end
end
