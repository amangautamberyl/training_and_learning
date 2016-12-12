class CreateBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :address
      t.integer :contact_num

      t.timestamps
    end
  end
end
