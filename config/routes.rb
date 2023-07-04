Rails.application.routes.draw do
    post '/users', to: 'users#create'

    post "/login", to:"session#login"
    delete "/logout", to:"session#logout"
end
