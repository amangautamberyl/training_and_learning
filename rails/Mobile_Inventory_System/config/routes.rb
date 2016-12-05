Rails.application.routes.draw do
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  to: 'home#index'
 get '/brands', to: 'home#brands'
 get '/mobiles', to: 'home#mobiles'
 get '/buyers', to: 'home#buyers'
 get '/brands', to: 'home#brands'
 get '/payments', to: 'home#payments'
 get '/sellers', to: 'home#sellers'

end
