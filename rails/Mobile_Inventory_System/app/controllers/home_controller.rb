class HomeController < ApplicationController

	def mobiles
		@mobiles = Mobile.all.order(:id)
	end

	def brands
 		@brands =Brand.all
	end

	def buyers
 		@buyers =Buyer.all
	end
	
	def sellers
 		@sellers =Seller.all
	end
	
	def payments
 		@payments =Invoice.all
	end
end
