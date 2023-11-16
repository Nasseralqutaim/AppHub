Rails.application.routes.draw do
  post "/sessions" => "sessions#create" #create session
  get "/login", to: "sessions#new", as: :login #Display login form 
  get '/home', to: 'users#home' # Display user's home page after login
  get '/apps', to: 'apps#index' #Display available apps to add.
  post '/user_apps', to: 'user_apps#create' #Add an app to the user's home page.


  get "up" => "rails/health#show", as: :rails_health_check
end
