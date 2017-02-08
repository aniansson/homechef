Rails.application.routes.draw do

  devise_for :users, path: 'users', controllers: {
    registrations: 'registrations'
  }

  resources :users do
    resources :dishes, only: [:new, :create]
  end

  root controller: :landing, action: :index
  resources :checkout, only: [:index]
  resources :charges, only: [:create]
  post :add_to_order, controller: :orders, action: :add_to_order
  post :remove_from_order, controller: :checkout, action: :delete
  post :search_by_address, controller: :landing, action: :address_search
  resources :users, only: [:show]

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :dishes, only: [:index]
      resources :charges, only: [:create]
      mount_devise_token_auth_for 'User', at: 'auth',
                                          skip: [:omniauth_callbacks]
    end
  end
end
