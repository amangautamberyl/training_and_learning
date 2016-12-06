class HomeController < ApplicationController

#Read Tables  (READ OPERATION)
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
	
	def invoices
 		@invoices =Invoice.all
	end

# Insert Data into Tables  (CREATE OPERATION)

	def create_mobile
		Mobile.create(name: params[:name], price: params[:price], imei_code: params[:imei_code], inventory: params[:inventory], brand_id: params[:brand_id], manufacturing_date: params[:manufacturing_date])
		redirect_to '/mobiles'
	end

	def create_brand
		Brand.create(name: params[:name], head_office: params[:head_office])
		redirect_to '/brands'
	end

	def create_buyer
		Buyer.create(name: params[:name], address: params[:address], contact_num: params[:contact_num])
		redirect_to '/buyers'
	end

	def create_seller
		Seller.create(name: params[:name])
		redirect_to '/sellers'
	end

	def create_invoice
		Invoice.create(payment_mode: params[:payment_mode], payment_mode: params[:payment_mode], payment_mode: params[:price] )
		redirect_to '/invoices'
	end

# Delete Data from Table (DELETE OPERATION)
	def delete_mobile
		Mobile.find(params[:id]).destroy
		redirect_to '/mobiles'
	end
end
