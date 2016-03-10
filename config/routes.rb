Rails.application.routes.draw do


  root 'books#index'

  get  'login' => 'session#new', as: :login
  post 'login' => 'session#create'
  get 'logout' => 'session#delete', as: :logout

  get '/register' => 'registration#new', as: :new_user
  post 'register' => 'registration#create', as: :users

  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  post 'books' => 'books#create', as: :books
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#delete'

  get 'authors' => 'authors#index', as: :authors
  get 'authors/new' => 'authors#new', as: :new_author
  get 'authors/:id' => 'authors#show', as: :author
  post 'authors' => 'authors#create'
  delete 'authors/:id' => 'authors#delete'
  get 'authors/edit'
  get 'authors/update'

end
