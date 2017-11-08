Rails.application.routes.draw do
  root "static_pages#home"
  get "static_pages/home"
  get "categories/shirt"
  get "categories/pant"
  get "categories/dress"
  get "categories/vest"
  resources :products
end
