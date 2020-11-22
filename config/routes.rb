Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :posts, only: [:index, :new, :create]
  resources :users, only: [:show]
end
