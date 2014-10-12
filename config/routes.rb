Rails.application.routes.draw do
 get 'pages/home'
 resources "contacts", only: [:new, :create]
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :contact_forms
  
  match '/contacts',     to: 'contacts#new',  via: 'get'
end
