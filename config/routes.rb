Rails.application.routes.draw do
  root 'products#index'
  
  devise_for :users

  resources :products
  resources :carts, only: [:show]
  resource :cart_items, except: [:show]
  resources :orders
end
