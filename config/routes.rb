Rails.application.routes.draw do
  get 'users/index'
  root to: "homes#index"
  get "/homes", to: "homes#index"
  get "/home/:id",to: "homes#show"
  post "/homes/new",to: "homes#new"
  post "/homes", to: "homes#create"
  resources :homes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
