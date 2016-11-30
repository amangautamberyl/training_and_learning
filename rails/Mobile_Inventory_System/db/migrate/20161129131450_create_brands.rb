class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
    	t.string	:name
    	t.string	:head_office
      t.timestamps
    end
  end
end
