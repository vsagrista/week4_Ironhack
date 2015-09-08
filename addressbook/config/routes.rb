Rails.application.routes.draw do
  get "/" => "contacts#index"
  get "/contacts/new" => "contacts#new"
  get "/contacts/:id" => "contacts#show" 
  post "/contacts" => "contacts#create"
end
