class CreateDepts < ActiveRecord::Migration[5.0]
  def change
    create_table :depts do |t|
    	t.string :Name
      t.timestamps
    end
  end
end
