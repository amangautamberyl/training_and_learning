class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :Name
      t.string :Headlocation

      t.timestamps
    end
  end
end
