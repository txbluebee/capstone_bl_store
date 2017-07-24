Rails.application.routes.draw do

  namespace :admin do
    get 'products/index'
  end

  namespace :admin do
    get 'products/edit'
  end

  root 'home#index'

  devise_for :users

  resources :products, only: [:index, :show]

  namespace :admin do
    resources :products
  end

end
