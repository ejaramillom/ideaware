Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures, only: [:index, :create, :destroy]
  get '/favorite' => 'pictures#favorites', as: "favorites"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :pictures, only: [:index]
    end
  end
end
