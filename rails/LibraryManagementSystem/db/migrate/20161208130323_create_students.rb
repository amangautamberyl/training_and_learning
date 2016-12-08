class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :Name
      t.string :Gender
      t.date :Date_of_Birth
      t.references :dept, foreign_key: true
      t.string :Contact

      t.timestamps
    end
  end
end
