Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  resources :foods, only: [:index]
  resources :recipes, only: [:index]
  resources :public, only: [:index]
  resources :general, only: [:index]
end
