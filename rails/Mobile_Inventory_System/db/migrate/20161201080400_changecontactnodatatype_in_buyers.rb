class ChangecontactnodatatypeInInvoices < ActiveRecord::Migration[5.0]
  def change
  	change_column :buyers, :contact_num, :string
  end
end
