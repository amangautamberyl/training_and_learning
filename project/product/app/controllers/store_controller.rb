class StoreController < ApplicationController
  def index
  	@articles = Article.order(:title)
  	@count = increment_cart
  end	
  def increment_cart
    if session[:counter].nil?
  	  session[:counter] = 0
  	else 
  	  session[:counter] +=1
  	end
  end
end
