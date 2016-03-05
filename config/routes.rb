Rails.application.routes.draw do

  root 'books#index'
  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  post 'books' => 'books#create', as: :books
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#delete'

  get 'authors/create'
  get 'authors/delete'
  get 'authors/edit'
  get 'authors/new'
  get 'authors/show'
  get 'authors/update'

end
