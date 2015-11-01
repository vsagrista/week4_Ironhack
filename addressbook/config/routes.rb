Rails.application.routes.draw do
  get "/" => "contacts#index"
  root to: "contacts#index"
  get "/contacts/favorites" => 'contacts#favorites'
  post "/contacts/find_contact" => "contacts#find_contacts"
  post "/contacts/make_favorite" => "contacts#make_favorite"
  resources :contacts, :only => [:index, :new, :show]
end
