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

	def customer_mobiles
 		@customer_mobiles = CustomerMobile.all
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

	def create_customer_mobile
		CustomerMobile.create(mobile_id: params[:mobile_id], seller_id:  params[:seller_id], buyer_id: params[:buyer_id], payment_id:  params[:payment_id] )
		redirect_to '/customer_mobiles'
	end

# Delete Data from Table (DELETE OPERATION)
	def delete_mobile
		Mobile.find(params[:id]).destroy
		redirect_to '/mobiles'
	end

	def delete_seller
		Seller.find(params[:id]).destroy
		redirect_to '/sellers'
	end

	def delete_customer_mobile
		CustomerMobile.find(params[:id]).destroy
		redirect_to '/customer_mobiles'
	end

	def delete_buyer
		Buyer.find(params[:id]).destroy
		redirect_to '/buyers'
	end
end
