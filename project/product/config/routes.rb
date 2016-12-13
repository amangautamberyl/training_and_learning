Rails.application.routes.draw do
  get 'store/index'
  # root 'store#index'
  root to: "articles#index"
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
