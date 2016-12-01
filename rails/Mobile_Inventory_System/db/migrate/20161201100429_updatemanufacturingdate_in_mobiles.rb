class UpdatemanufacturingdateInMobiles < ActiveRecord::Migration[5.0]
  def change
  	mobmanufac = {6 => {"manufacturing_date" => "2016-10-08 19:00:19"}, 7 => {"manufacturing_date" => "2016-09-15 15:15:15"}, 8 => {"manufacturing_date" => "2016-10-22 18:00:00"}}
    Mobile.update(mobmanufac.keys, mobmanufac.values)
  end
end
