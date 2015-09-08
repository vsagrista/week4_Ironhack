Rails.application.routes.draw do
  get "/" => "contacts#index"
  get "/contacts/new" => "contacts#new"
  get "/contacts/:id" => "contacts#show", as: :contact
  post "/contacts" => "contacts#create"
  patch "/contacts/:id" => "contacts#favorite"
  post "/contacts/find_contact" => "contacts#find_contacts"
end
