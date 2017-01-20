Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home'

  devise_for :users

  resources :users, only: [:show, :index]
  resources :profiles
  resources :departments
  resources :products
  resources :photos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
