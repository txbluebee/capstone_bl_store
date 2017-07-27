Rails.application.routes.draw do

  get 'carts/show'

  namespace :admin do
    get 'products/index'
  end

  namespace :admin do
    get 'products/edit'
  end

  root 'home#index'

  devise_for :users

  resources :products, only: [:index, :show] do
    member do
      post :add_to_cart
    end
  end

  resources :cart_items

  namespace :admin do
    resources :products
  end

  resource :cart, only: [:show] do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :orders do
    member do
      post :pay_with_credit_card
      post :pay_with_paypal
    end
  end

  resources :charges

end
