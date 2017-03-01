# require 'stripe'
class Mobilecreation
	attr_attribute :buyers
	
	def initialize(params)
		self.buyers = buyers.new
		@name = params[:name]
    	@address = params[:address]
    	@contact_num = params[:contact_num]
	end

end