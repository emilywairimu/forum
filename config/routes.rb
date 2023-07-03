Rails.application.routes.draw do
    post "/login", to:"session#login"
    delete "/logout", to:"session#logout"
end
