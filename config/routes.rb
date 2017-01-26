Rails.application.routes.draw do
  root to: 'departments#index'
  devise_for :users

  resources :users, only: [:show, :index] do
    resources :orders
  end
  resources :profiles
  resources :departments
  resources :products
  resources :photos
  resources :lineitems

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'shopping_cart/' => 'shopping_carts#add', as: :shopping_cart
  # get 'shopping_cart/add/:id' => 'shopping_carts#add', as: add_shopping_cart

end
