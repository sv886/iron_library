class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
  end

  def show
    @author = Author.find_by id: params[:id]
  end

  def create
  end

  def delete
  end

  def edit
  end

  def update
  end
end
