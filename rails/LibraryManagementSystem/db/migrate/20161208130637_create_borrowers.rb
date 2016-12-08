class CreateBorrowers < ActiveRecord::Migration[5.0]
  def change
    create_table :borrowers do |t|
      t.references :book, foreign_key: true
      t.date :issued_date
      t.date :return_date
      t.references :staff, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
