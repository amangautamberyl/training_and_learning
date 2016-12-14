class CreateLineitems < ActiveRecord::Migration[5.0]
  def change
    create_table :lineitems do |t|
      t.references :article, foreign_key: true
      t.belongs_to :cart, foreign_key: true

      t.timestamps
    end
  end
end
