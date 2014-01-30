class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to action: 'index'
			flash[:notice] = "Your book has been added to the library!"
		else
			render action: 'new'
			flash[:notice] = "Argh, something went wrong. You suck! Jk. Try again."
		end

	end

	private
	def book_params
		params.require(:book).permit(:title, :author, :year, :isbn, :genre)

end
