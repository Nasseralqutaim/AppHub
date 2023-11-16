Rails.application.routes.draw do
  post "/sessions" => "sessions#create" #create session
  get "/login", to: "sessions#new", as: :login #Display login form 




  get "up" => "rails/health#show", as: :rails_health_check
end
