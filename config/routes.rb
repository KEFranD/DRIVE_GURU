Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "checkout", to: "pages#checkout"
  get "status", to: "pages#status"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings
  resources :users, only: [:show] do
    resources :bookings, only: [:index]
    resources :reviews, only: [:new, :create, :edit, :update]
    resources :messages, only: [:index, :create]
  end

end
