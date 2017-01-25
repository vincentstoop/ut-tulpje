Rails.application.routes.draw do
  root to: 'departments#index'
  # get 'pages/home'

  devise_for :users

  resources :users, only: [:show, :index]
  resources :profiles
  resources :departments do
    resources :products, only: [:show, :new, :edit, :update, :destroy]
  end
  resources :photos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'shopping_cart/' => 'shopping_carts#add', as: :add_item
  get 'shopping_cart/update' => 'shopping_carts#update', as: :update_item_quantity
  get 'shopping_cart/remove' => 'shopping_carts#remove', as: :remove_item
  get 'shopping_cart/empty' => 'shopping_carts#empty', as: :empty_cart
  # get 'shopping_cart/add/:id' => 'shopping_carts#add', as: add_shopping_cart
end
