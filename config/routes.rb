Rails.application.routes.draw do
  devise_for :users
  root to: "games#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :games, only: %i[index new create show edit update destroy] do
    resources :bookings, only: %i[create]
    resources :reviews, only: %i[new create]
  end
  resources :bookings, only: %i[index]
  resources :categories, only: %i[index show]
  resources :reviews, only: %i[index]
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
