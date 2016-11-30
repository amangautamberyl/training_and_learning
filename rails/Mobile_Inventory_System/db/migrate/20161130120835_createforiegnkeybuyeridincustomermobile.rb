class Createforiegnkeybuyeridincustomermobile < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :customer_mobiles, :buyers, column: :buyer_id, primary_key: :id
  end
end
