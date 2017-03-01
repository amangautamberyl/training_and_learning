Rails.application.routes.draw do
  resources :image_attachments
  resources :images
  resources :post_attachments
  resources :posts
  root :to => "home#index"
  resources :cust_mobiles
  resources :sellers
  resources :buyers
  resources :invoices
  resources :brands
  resources :mobiles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
