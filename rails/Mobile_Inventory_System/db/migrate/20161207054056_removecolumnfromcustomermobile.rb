class Removecolumnfromcustomermobile < ActiveRecord::Migration[5.0]
  def change
  	remove_column :customer_mobiles, :id
  end
end
