Rails.application.routes.draw do
  resources :profiles
  resources :users
  resources :discussions do
    resources :replies 
  end
  resources :channels
  
    post '/users', to: 'users#create'

    post "/login", to:"session#login"
    match "/logout", to: "session#logout", via: [:delete, :get]
    # get '/users/current', to: 'users#current'

    # delete "/logout", to:"session#logout"
end
