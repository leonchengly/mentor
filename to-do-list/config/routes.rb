Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "tasks#index"

  resources :tasks do
    resources :lists, only: [:new, :create]
  end
  resources :lists, only: [:destroy]
end
