class SellerController < ApplicationController
	
	def new
		@seller = Seller.new
	end	

	def create
		 @seller = Seller.create(name: params[:seller][:name])
		 redirect_to '/sellers'
	end
end
