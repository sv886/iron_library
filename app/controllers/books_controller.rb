class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def create
    @book = Book.new
    @book.photo_url = params[:book][:photo_url]
    @book.title = params[:book][:title]
    @book.price = params[:book][:price]

    if @book.save
      # redirect to "/"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]
    @book.price = params[:book][:price]

    if @book.save
      # redirect to "/posts"
      redirect_to book_path(id: @book.id)
    else
      render :edit
    end
  end

  def delete
    @book = Book.find_by id: params[:id]
    @book.destroy
    # redirect to "/"
    redirect_to books_path
  end
end
