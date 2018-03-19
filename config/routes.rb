Rails.application.routes.draw do

  get '/books', to: 'books#index', as: 'books'
  get '/books/:id', to: 'books#show', as: 'book'
  get '/books/new', to: 'books#new', as: 'new-book'
  post '/books', to: 'books#create'
  get '/books/:id/edit', to: 'books#edit', as: 'edit-book'
  patch '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
