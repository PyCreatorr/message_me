Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "chatroom#index"
  post 'chatroom', to: "chatroom#create"
  post 'message', to: "messages#create"

  # Authentification session
  get 'login', to: 'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Authentification - create user/sign up
  get 'signup', to: 'users#new'
  # create all other routes for user
  resources :users, except: [:new]

  # Defines the root path route ("/")
  # root "articles#index"
end
