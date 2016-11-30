class Renamemobilenameinmobiles < ActiveRecord::Migration[5.0]
  def change
  	rename_column :mobiles,  :mobile_name,  :name
  end
end
