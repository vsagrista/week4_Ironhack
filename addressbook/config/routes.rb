Rails.application.routes.draw do
  get "/" => "contacts#index"
  root to: "contacts#index"
  get "/contacts/favorites" => 'contacts#favorites'
  get "/contacts/find_contact" => "contacts#find_contacts"
  resources :contacts, :only => [:index, :new, :show]
end
