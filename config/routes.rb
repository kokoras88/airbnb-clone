Rails.application.routes.draw do
  devise_for :users
  root to: "games#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :games, only: %i[index new create show edit update destroy]
  resources :bookings
end
