Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
  # mapping get request for /dashboard to index action of DashboardController
  get "/dashboard", to: "dashboard#index"

  root 'users#home'
  get '/signup', to: 'users#new'
  resources :user
end
