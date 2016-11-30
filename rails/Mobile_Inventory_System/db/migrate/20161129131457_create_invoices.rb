class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
    	t.string  :payment_mode
    	t.string  :payment_details
    	t.integer  :price
    	t.timestamp  :selling_date
      t.timestamps
    end
  end
end
