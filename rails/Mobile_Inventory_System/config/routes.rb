Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  to: 'home#index'
 get '/brands', to: 'home#brands'
 get '/mobiles', to: 'home#mobiles'
 get '/buyers', to: 'home#buyers'
 get '/brands', to: 'home#brands'
 get '/invoices', to: 'home#invoices'
 get '/sellers', to: 'home#sellers'
 get '/mobile/new', to: 'mobile#new'
 get '/brand/new', to: 'brand#new'
 get '/seller/new', to: 'seller#new'
 get '/buyer/new', to: 'buyer#new'
 get '/invoice/new', to: 'invoice#new'
 get '/customer_mobiles', to: 'home#customer_mobiles'

 get '/newmobile', to: 'home#newmobile'
 get '/newbrand', to: 'home#newbrand'
 # get '/newbuyer', to: 'home#newbuyer'
 get '/newseller', to: 'home#newseller'
 get '/newinvoice', to: 'home#newinvoice'
 # get '/mobile/edit', to: 'mobile#edit'
 get '/customer_mobiledetails', to: 'home#customer_mobiledetails'
 #get '/seller/new',to:'seller#new'

 post '/create_mobile', to: 'home#create_mobile'
 post '/create_brand', to: 'home#create_brand'
 post '/create_buyer', to: 'home#create_buyer'
 #post '/create_seller', to: 'home#create_seller'
 post '/create_invoice', to: 'home#create_invoice'
 post '/create_customer_mobile', to: 'home#create_customer_mobile'
 post '/create_new_mobile', to: 'mobile#create'
 post '/create_seller', to: 'seller#create'
 post '/create_new_brand', to: 'brand#create'
 post '/create_new_seller', to: 'seller#create'
 post '/create_new_buyer', to: 'buyer#create'
 post '/create_new_invoice', to: 'invoice#create'

 get '/edit_mobile',to:'mobile#edit'
 get '/edit_brand',to:'brand#edit'
 get '/edit_seller',to:'seller#edit'
 get '/edit_buyer',to:'buyer#edit'
 get '/edit_invoice',to:'invoice#edit' 

 put '/edit_mobile',to:'mobile#update' 
 put '/edit_brand',to:'brand#update' 
 put '/edit_seller',to:'seller#update' 
 put '/edit_buyer',to:'buyer#update' 
 put '/edit_invoice',to:'invoice#update' 


 delete '/delete_mobile', to: 'mobile#delete_mobilezxs'
 delete '/delete_brand', to: 'brand#delete_brand'
 delete '/delete_seller', to: 'seller#delete_seller'
 delete '/delete_buyer', to: 'buyer#delete_buyer'
 delete '/delete_invoice', to: 'invoice#delete_invoice'


end
