Rails.application.routes.draw do
  get "/" => "contacts#index"
  root to: "contacts#index"
  get "/contacts/show_favorites" => 'contacts#show_favorites'
  post "/contacts/find_contact" => "contacts#find_contacts"
  post "/contacts/make_favorite" => "contacts#make_favorite"
  post "/contacts/unfavor_contact" => "contacts#unfavor_contact"

  resources :contacts, :only => [:index, :new, :show]
end
