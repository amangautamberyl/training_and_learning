class CreateCustMobiles < ActiveRecord::Migration[5.0]
  def change
    create_table :cust_mobiles do |t|
      t.references :mses, foreign_key: true
      t.references :seller, foreign_key: true
      t.references :buyer, foreign_key: true
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
