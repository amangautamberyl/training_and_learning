class Createforiegnkeypaymentidincustomermobile < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :customer_mobiles, :invoices, column: :payment_id, primary_key: :id
  end
end
