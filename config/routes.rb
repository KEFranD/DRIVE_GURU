Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "checkout", to: "pages#checkout"
  get "status", to: "pages#status"

  get "booking_confirmation/:id", to: "bookings#confirmation", as: "booking_confirmation"

  # Define your remaining routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :bookings, only: [:new, :create, :index] do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  resources :users, only: [:show] do
    resources :bookings, only: [:index, :show]
  end

  resources :instructors, only: [:new, :create, :index, :show] do
    resources :bookings, only: [:new, :create]
  end
end
