class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def show
    @author = Author.find_by id: params[:id]
  end

  def create
    @author = Author.new
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    @author.bio = params[:author][:bio]

    if @author.save
      # redirect to "/"
      redirect_to authors_path
    else
      render :new
    end
  end

  def delete
    @author = Author.find_by id: params[:id]
    @author.destroy
    # redirect to "authors"
    redirect_to authors_path
  end

  def edit
  end

  def update
  end
end
