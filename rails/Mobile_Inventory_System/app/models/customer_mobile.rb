class CustomerMobile < ApplicationRecord
	  belongs_to :mobile
	  belongs_to :buyer
	  belongs_to :seller
	  belongs_to :invoice
end
