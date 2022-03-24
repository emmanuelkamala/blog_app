Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'

  root 'articles#index'
  resources :articles do 
    resources :comments
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
