Rails.application.routes.draw do
  get "sessions/new"
  root "static_pages#home"
  get "static_pages/home"
  get "categories/shirt"
  get "categories/pant"
  get "categories/dress"
  get "categories/vest"
  resources :users
  resources :products, only: [:index, :show]
  resources :cart_items, only: [:create, :update, :destroy]
  resources :orders
  get "carts", to: "carts#index"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
