Rails.application.routes.draw do

  get "/auth/:provider/callback", to: "sessions#create"
  get '/auth/github', as: 'github_login'
  
  get '/login', to: 'sessions#new', as: 'login_form'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/login', to: 'sessions#delete', as: 'logout'

  resources :authors do
    resources :books, only: [:index, :new]
  end

  resources :books

  root 'books#index'

  # get '/books', to: 'books#index', as: 'books'
  # get '/books/new', to: 'books#new', as: 'new-book'
  # get '/books/:id', to: 'books#show', as: 'book'
  # post '/books', to: 'books#create'
  # get '/books/:id/edit', to: 'books#edit', as: 'edit-book'
  # patch '/books/:id', to: 'books#update'
  # delete '/books/:id', to: 'books#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
