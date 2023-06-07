Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: [:index, :new, :create, :destroy, :update, :edit, :show] do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :users, only: [:show]
end
