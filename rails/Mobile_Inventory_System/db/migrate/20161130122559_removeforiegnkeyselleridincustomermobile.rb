class Removeforiegnkeyselleridincustomermobile < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :customer_mobiles, :sellers, column: :seller_id, primary_key: :id
  end
end
