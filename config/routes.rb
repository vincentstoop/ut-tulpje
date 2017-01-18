Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home'

  devise_for :users

  resources :profiles, only: [:get, :new, :edit, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
