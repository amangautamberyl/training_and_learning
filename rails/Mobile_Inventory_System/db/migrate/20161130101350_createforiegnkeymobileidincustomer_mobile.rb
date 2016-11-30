class CreateforiegnkeymobileidincustomerMobile < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :customer_mobiles, :mobiles, column: :mobile_id, primary_key: :id
  end
end
