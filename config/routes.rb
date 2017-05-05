Rails.application.routes.draw do

  resources :skeins
  resources :compositions
  resources :fibre_types
  resources :yarns
  resources :profiles
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out: 'logout'}
  root 'pages#index'
  resources :charges
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
