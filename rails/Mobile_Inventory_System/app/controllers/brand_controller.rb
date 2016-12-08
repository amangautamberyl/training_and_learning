class BrandController < ApplicationController

	def new 
		@brands = Brand.new
	end

	def create
		 @brands = Brand.create(name: params[:brand][:name], head_office: params[:brand][:head_office])
		 redirect_to root_url
	end

	def edit
      @brand = Brand.find(params[:id])
      # @brands = Brand.all
	end

	def update
		@brand = Brand.find(params[:brand][:id])
		@brand.name = params[:brand][:name]
		@brand.save
		redirect_to '/brands'
	end

	def delete_brand
        Brand.find(params[:id]).destroy
        redirect_to '/brands'
    end
end
