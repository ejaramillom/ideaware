# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures
  get '/favorite' => 'pictures#favorites', as: "favorites"
  # get '/photos'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :pictures, only: [:index]
    end
  end
end
