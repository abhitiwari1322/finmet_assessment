
Rails.application.routes.draw do
  root "home#index"
  resources :players, only: [:index, :new, :create, :destroy]
  resources :matches, only: [:index, :new, :create]
end