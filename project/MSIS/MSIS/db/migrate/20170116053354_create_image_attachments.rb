class CreateImageAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :image_attachments do |t|
      t.integer :post_id
      t.string :avatar

      t.timestamps
    end
  end
end
