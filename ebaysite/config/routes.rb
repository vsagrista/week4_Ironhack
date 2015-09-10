Rails.application.routes.draw do
  resources :users
  resources :products do
  	resources :bids
  end
end
