Rails.application.routes.draw do
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"

  get "/", to: "application#hello", as: "root"

  get "/secret", to: "secrets#show", as: "secret"
end
