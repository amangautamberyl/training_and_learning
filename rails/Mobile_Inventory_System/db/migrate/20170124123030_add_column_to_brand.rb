class AddColumnToBrand < ActiveRecord::Migration[5.0]
  def change
  	add_column :brands, :gmaps, :boolean
  end
end
