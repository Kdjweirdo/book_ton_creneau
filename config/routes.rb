Rails.application.routes.draw do
  get 'sessions/new'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get  "/signup",  to: "users#new"
  resources :users
  resources :account_activations, only: [:edit]
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end
