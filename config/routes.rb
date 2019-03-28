Rails.application.routes.draw do
  get 'home', to: 'static#home'
  get 'products/inventory/:id', to: 'products#inventory'
  get 'products/description/:id', to: 'products#description', as: 'description'
  resources :orders
  resources :invoices
  resources :products, only: [:new,:create,:index]
end
