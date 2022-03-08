Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"
  resources :foods, only: [:index, :new, :create]
  resources :recipes, only: [:index]
  resources :public, only: [:index]
  resources :general, only: [:index]

  # root 'users#index'
end
