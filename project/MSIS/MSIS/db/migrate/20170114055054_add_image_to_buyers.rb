class AddImageToBuyers < ActiveRecord::Migration[5.0]
  def change
    add_column :buyers, :image, :string
  end
end
