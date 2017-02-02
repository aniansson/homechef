Rails.application.routes.draw do
  devise_for :users
  root controller: :landing, action: :index
  resources :dishes, only: [:index, :show]
  resources :checkout, only: [:index]
  resources :charges, only: [:create]
  post :add_to_order, controller: :orders, action: :add_to_order
  post :remove_from_order, controller: :checkout, action: :delete
  post :search_by_address, controller: :landing, action: :address_search
  # the add_to_order function and the search_by_address function are winding up both in the search_by_address function - obviously we need to fix that behavior. Don't know how.
end
