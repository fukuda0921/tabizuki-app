Rails.application.routes.draw do
  devise_for :users,controllers: {   registrations: 'users/registrations' }
  root to: "top#index"
  resources :posts, only: [:index, :new, :create, :show] 
   resources :users, only: [:show]
end
