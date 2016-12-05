class Seller < ApplicationRecord
	has_many :mobiles, through: :customer_mobiles
end
