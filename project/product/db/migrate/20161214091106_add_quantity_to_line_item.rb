class AddQuantityToLineItem < ActiveRecord::Migration[5.0]
  def change
    add_column :lineitems, :quantity, :integer, default: 1
  end
end
