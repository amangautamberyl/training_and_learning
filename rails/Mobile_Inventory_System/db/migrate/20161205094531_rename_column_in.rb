class RenameColumnIn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :mobiles,  :Imei_code,  :imei_code
  	rename_column :mobiles,  :Inventory,  :inventory
  end
end
