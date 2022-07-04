Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'

  root 'articles#index'
  resources :articles do 
    resources :comments
  end
  resources :users
  resource :session
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy", as: "logout" 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
