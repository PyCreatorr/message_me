Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "chatroom#index"
  post 'chatroom', to: "chatroom#create"
  post 'message', to: "messages#create"

  get 'message', to: "messages#new"

  # Authentification session
  get 'login', to: 'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # create all other routes for user
  resources :users, except: [:new, :create]
  
  # mount ActionCable.server, at: '/cable'
  
  # Authentification - create user/sign up
  get 'signup', to: 'users#new'

  post 'signup', to: 'users#create'
  

  # Defines the root path route ("/")
  # root "articles#index"

end
