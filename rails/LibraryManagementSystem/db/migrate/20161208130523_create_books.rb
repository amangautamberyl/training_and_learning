class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :language
      t.references :publication, foreign_key: true
      t.integer :actual_copy
      t.integer :current_copy
      t.references :dept, foreign_key: true

      t.timestamps
    end
  end
end
