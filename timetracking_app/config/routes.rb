Rails.application.routes.draw do
   resources :projects  do 
   	resources :entries, only: [:new, :create]
   end
end
