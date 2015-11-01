Rails.application.routes.draw do
  get "/" => "contacts#index"
  root to: "contacts#index"
  get "/contacts/new" => "contacts#new"
  get "/contacts/:id" => "contacts#show", as: :contact
  post "/contacts" => "contacts#create"
  get "/contacts/favorites" => "contacts#favorite"
  post "/contacts/find_contact" => "contacts#find_contacts"
end
