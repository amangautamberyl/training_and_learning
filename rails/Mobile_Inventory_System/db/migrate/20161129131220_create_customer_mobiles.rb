class CreateCustomerMobiles < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_mobiles do |t|
    	t.integer  :mobile_id
    	t.integer  :seller_id
    	t.integer  :buyer_id
    	t.integer  :payment_id
      t.timestamps
    end
  end
end
