class Mobile < ApplicationRecord
	#validates :id, presence: true
	belongs_to :brand
	# belongs_to :seller
	has_one :customer_mobile
	has_one :seller, through: :customer_mobile
end
