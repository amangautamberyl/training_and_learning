class BuyerController < ApplicationController
	
	def new
		@buyer = Buyer.new
	end	

	def create
		 @buyer = Buyer.create(name: params[:buyer][:name], address: params[:buyer][:address], contact_num: params[:buyer][:contact_num])
		 redirect_to '/buyers'
	end

	def edit
      @buyer = Buyer.find(params[:id])
	end

	def update
		@buyer = Buyer.find(params[:buyer][:id])
		@buyer.name = params[:buyer][:name]
		@buyer.address = params[:buyer][:address]
		@buyer.contact_num = params[:buyer][:contact_num]
		@buyer.save
		redirect_to '/buyers'
	end

	 def delete_buyer
            Buyer.find(params[:id]).destroy
            redirect_to '/buyers'
      end
end
