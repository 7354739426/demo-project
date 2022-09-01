class BookController < ApplicationController
  def index
    @books=Book.all
    @authors=Author.all
  end

  def create_book
    @books=Book.new(book_params)
    @books.save
    flash[:notice] = "Book was successfully created" 
    redirect_to root_path
  end

  def delete_book
    @book = Book.find(params[:id])   
    if @book.delete   
      flash[:notice] = 'Book deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this book!'   
    end   
  end

  private 
  def book_params   
      params.permit(:name, :author_id, :published_at)   
  end 
end
