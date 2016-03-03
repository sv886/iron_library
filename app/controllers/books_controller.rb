class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
