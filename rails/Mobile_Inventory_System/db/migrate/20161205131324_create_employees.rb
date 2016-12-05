class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :gender
      t.datetime :date_of_joining

      t.timestamps
    end
  end
end
