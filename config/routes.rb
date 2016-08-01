Rails.application.routes.draw do
  root 'home#index'

  resources :recipes, only: [:show, :new, :create]
  resources :kitchen_types, only: [:show, :new, :create]
  resources :food_types, only: [:show, :new, :create]
end
