Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "checkout", to: "pages#checkout"
  get "status", to: "pages#status"
  # get '/instructors/search', to: 'instructors#search', as: 'search_instructors'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :bookings, only: %i[edit update destroy] do
    resources :reviews, only: %i[new create edit update]
  end

  resources :users, only: [:show] do
    resources :bookings, only: %i[index show]
  end

  resources :instructors do
    resources :bookings, only: %i[new create]
  end

  get "status", to: "pages#status"
  get "checkout", to: "pages#checkout"
end
