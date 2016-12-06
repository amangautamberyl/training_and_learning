Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  to: 'home#index'
 get '/brands', to: 'home#brands'
 get '/mobiles', to: 'home#mobiles'
 get '/buyers', to: 'home#buyers'
 get '/brands', to: 'home#brands'
 get '/invoices', to: 'home#invoices'
 get '/sellers', to: 'home#sellers'
 get '/newmobile', to: 'home#newmobile'
 get '/newbrand', to: 'home#newbrand'
 get '/newbuyer', to: 'home#newbuyer'
 get '/newseller', to: 'home#newseller'
 get '/newinvoice', to: 'home#newinvoice'
 get '/newpayment', to: 'home#newinvoice'

 post '/create_mobile', to: 'home#create_mobile'
 post '/create_brand', to: 'home#create_brand'
 post '/create_buyer', to: 'home#create_buyer'
 post '/create_seller', to: 'home#create_seller'
 post '/create_invoice', to: 'home#create_invoice'

 delete '/delete_mobile', to: 'home#delete_mobile'
end
