class RemoveColumnFromInvoices < ActiveRecord::Migration[5.0]
  def change
  	remove_column :invoices, :selling_date
  end
end
