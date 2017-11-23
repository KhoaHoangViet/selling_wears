Rails.application.routes.draw do
  get 'sessions/new'
  root "static_pages#home"
  get "static_pages/home"
  get "categories/shirt"
  get "categories/pant"
  get "categories/dress"
  get "categories/vest"
  resources :products
  resources :users
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
