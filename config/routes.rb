Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/components_alex' => 'pages#components_alex'
  # Defines the root path route ("/")
  # root "articles#index"

  get "/jorgen/", to: 'pages#jorgen'
end
