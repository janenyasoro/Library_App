class BooksController < ApplicationController
  def index
    end
  def new
    @book =Book.new
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_url, notice: "Book successfully added"
  end
end
  private
  def book_params
    params.require(:book).permit(:title, :isbn, :quantity)
  end
end
