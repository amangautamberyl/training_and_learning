class Addcolumntomobiles < ActiveRecord::Migration[5.0]
  def change
  	add_column  :mobiles, :brand_id, :integer
  	add_column  :mobiles, :manufacturing_date, :timestamp
  end
end
