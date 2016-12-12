class CustMobile < ApplicationRecord
  belongs_to :mobiles
  belongs_to :seller
  belongs_to :buyer
  belongs_to :invoice
 
end
