class UpdatebrandidinmobilesInInvoices < ActiveRecord::Migration[5.0]
  def change
  	Mobile.update(1, :brand_id => 2)
  end
end
