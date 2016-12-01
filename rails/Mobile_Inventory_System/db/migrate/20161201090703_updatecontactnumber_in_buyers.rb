class UpdatecontactnumberInBuyers < ActiveRecord::Migration[5.0]
  def change
  	buyerupdate = {1 => {"contact_num" => "9897456321"}, 2 => {"contact_num" => "9897546425"}, 3 => {"contact_num" => "9564123578"}, 4 => {"contact_num" => "8865412324"}}
    Buyer.update(buyerupdate.keys, buyerupdate.values)
  end
end
