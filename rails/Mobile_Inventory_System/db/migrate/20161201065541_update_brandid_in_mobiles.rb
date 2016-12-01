class UpdateBrandidInMobiles < ActiveRecord::Migration[5.0]
  def change
  	brand = {6 => {"brand_id" => 1}, 7 => {"brand_id" => 1}, 8 => {"brand_id" => 2}}
  	Mobile.update(brand.keys, brand.values)
  end
end
