Rails.application.routes.draw do
	resources :entries, only: [:edit, :update, :destroy]
	resources :projects, only: [:edit, :update]
   	resources :projects  do 
   		resources :entries, only: [:new, :create]
   end
end
