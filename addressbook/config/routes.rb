Rails.application.routes.draw do
  get "/" => "contacts#index"
  get "/contacts/:id" => "contacts#show" 
end
