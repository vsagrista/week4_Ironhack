Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :users
  resources :products do
  	resources :bids
  end
end
