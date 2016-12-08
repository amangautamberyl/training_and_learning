Rails.application.routes.draw do
  root :to => "publications#index" 
  resources :borrowers
  resources :books
  resources :students
  resources :staffs
  resources :depts
  resources :publications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
