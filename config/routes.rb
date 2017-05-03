Rails.application.routes.draw do
  
  resources :skeins
  resources :compositions
  resources :fibre_types
  resources :yarns
  resources :profiles
  devise_for :users
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
