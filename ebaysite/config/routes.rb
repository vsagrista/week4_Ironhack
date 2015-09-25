Rails.application.routes.draw do
  
  devise_for :views

  get 'profile', to: 'users#profile'
  root to: 'users#profile'
  

  devise_for :users
  resources :users
  resources :products do
  	resources :bids
  end
end
