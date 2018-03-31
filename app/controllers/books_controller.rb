class BooksController < ApplicationController
  def show
    byebug
    @book = Book.find(params[:id])
  end
end
