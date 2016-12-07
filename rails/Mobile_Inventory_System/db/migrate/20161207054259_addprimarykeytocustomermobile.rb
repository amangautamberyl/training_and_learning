class Addprimarykeytocustomermobile < ActiveRecord::Migration[5.0]
  def change
  	add_column  :customer_mobiles, :id, :primary_key
  end
end
