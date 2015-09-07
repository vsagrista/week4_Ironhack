Rails.application.routes.draw do
  get "/" => "contacts#index"
  get "/contacts/:id" => "contacts#show" 
  get "/new" => "contacts#new"

end
