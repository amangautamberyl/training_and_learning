class SellerController < ApplicationController
	
	def new
		@seller = Seller.new
	end	

	def create
		 @seller = Seller.create(name: params[:seller][:name])
		 redirect_to '/sellers'
	end

	def edit
      @seller = Seller.find(params[:id])
      
	end

	def update
		@seller = Seller.find(params[:seller][:id])
		@seller.name = params[:seller][:name]
		@seller.save
		redirect_to '/sellers'
	end

	def delete_seller
            Seller.find(params[:id]).destroy
            redirect_to '/sellers'
    end
end
