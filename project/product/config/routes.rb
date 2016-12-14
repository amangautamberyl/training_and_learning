Rails.application.routes.draw do
  resources :lineitems
  resources :carts
  get 'store/index'
  root 'store#index'
  # root to: "articles#index"
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
