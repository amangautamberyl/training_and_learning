class Seller < ApplicationRecord
	has_many :mobiles, through: :cust_mobiles
	validates :name, presence: true
end
