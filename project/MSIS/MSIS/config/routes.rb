Rails.application.routes.draw do
  root :to => "home#index"
  resources :cust_mobiles
  resources :sellers
  resources :buyers
  resources :invoices
  resources :brands
  resources :mobiles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
