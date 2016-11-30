class Createforiegnkeybrandidinmobile < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :mobiles,  :brands,  column: :brand_id , primary_key: :id 
  end
end
