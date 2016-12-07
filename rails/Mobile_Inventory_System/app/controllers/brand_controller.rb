class BrandController < ApplicationController

	def new 
		@brands = Brand.new
	end

	def create
		 @brands = Brand.create(name: params[:brand][:name], head_office: params[:brand][:head_office])
		 redirect_to '/brands'
	end
end
