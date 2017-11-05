Rails.application.routes.draw do
  get "static_pages/home"
  get "categories/shirt"
  get "categories/pant"
  get "categories/dress"
  get "categories/vest"
  root "static_pages#home"
end
