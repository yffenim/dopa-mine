Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
  # mapping get request for /dashboard to index action of DashboardController
  get "/dashboard", to: "dashboard#index"

  # set root to user's home
  root 'users#home'
  get '/signup',  to: 'users#new'
  resources :users
  
  get '/login',   to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :user



end
