Rails.application.routes.draw do

  root 'books#index', as: :books
  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  post 'books/create' => 'books#create'
  get 'books/edit' => 'books#edit'
  get 'books/update' => 'books#update'
  get 'books/delete' => 'books#delete'

  get 'authors/create'
  get 'authors/delete'
  get 'authors/edit'
  get 'authors/new'
  get 'authors/show'
  get 'authors/update'

end
