Rails.application.routes.draw do
  root controller: :landing, action: :index
  resources :dishes, only: [:index, :show]
  resources :charges
  get :checkout, controller: :landing, action: :checkout
end
