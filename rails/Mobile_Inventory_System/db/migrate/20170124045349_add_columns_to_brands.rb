class AddColumnsToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :latitude, :float
    add_column :brands, :longitude, :float
  end
end
