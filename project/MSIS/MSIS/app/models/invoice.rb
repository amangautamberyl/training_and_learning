class Invoice < ApplicationRecord
	has_one :buyer, through: :cust_mobiles
	has_one :mobile, through: :cust_mobiles
	validates :payment_mode, :price, presence: true
	validates :Price, numericality: {greater_than_or_equal_to: 0.01}
end
