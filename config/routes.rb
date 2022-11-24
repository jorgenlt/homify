Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/components_alex' => 'pages#components_alex'
  # Defines the root path route ("/")
  # root "articles#index"

  resources :listings, only: [:index, :show, :new, :create] do
    resources :matches, only: [:create]
  end

  resources :searches, only: [:new, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :new, :create]

  get "julia", to: "pages#julia"
  get "julia/:id", to: "pages#julia"
  get "/jorgen/", to: 'pages#jorgen'
  get '/alex/' => 'pages#alex'
  # Defines the root path route ("/")
  get "/alexander/", to: "pages#alexander"
  get '/show/' => 'pages#show'
  get 'profile/' => 'pages#profile'
end
