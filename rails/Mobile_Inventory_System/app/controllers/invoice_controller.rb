class InvoiceController < ApplicationController

	def new
		@invoice = Invoice.new
	end	

	def create
		 @invoice = Invoice.create(payment_mode: params[:invoice][:payment_mode], payment_details: params[:invoice][:payment_details], price: params[:invoice][:price])
		 redirect_to '/invoices'
	end

	def edit
      @invoice = Invoice.find(params[:id])
	end

	def update
		@invoice = Invoice.find(params[:invoice][:id])
		@invoice.payment_mode = params[:invoice][:payment_mode]
		@invoice.payment_details = params[:invoice][:payment_details]
		@invoice.price = params[:invoice][:price]
		@invoice.save
		redirect_to '/invoices'
	end

	def delete_invoice
        Invoice.find(params[:id]).destroy
        redirect_to '/invoices'
    end

end
