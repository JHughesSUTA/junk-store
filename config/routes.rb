Rails.application.routes.draw do
  get "/junks" => "junks#index"
  get "/junks/new" => "junks#new"
  post "/junks" => "junks#create"
  get "/junks/:id" => "junks#show"
  get "/junks/:id/edit" => "junks#edit"
  patch "/junks/:id" => "junks#update"
  delete "/junks/:id" => "junks#destroy"
end
