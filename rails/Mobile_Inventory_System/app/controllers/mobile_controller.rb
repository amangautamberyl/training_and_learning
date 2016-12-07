class MobileController < ApplicationController

	def new
      @mobile = Mobile.new
      @brands = Brand.all
	end

	def create
      @mobile = Mobile.create(name: params[:mobile][:name], manufacturing_date: params[:mobile][:manufacturing_date], brand_id: params[:mobile][:brand_id])
      redirect_to root_url
      #debugger
      # if @mobile.save
      # 	redirect_to root_url
      # else
      # 	 @brands = Brand.all
      #    render :new
      # end

	end

	def edit
      @mobile = Mobile.find(params[:id])
      @brands = Brand.all
	end

	def update

	end
end
