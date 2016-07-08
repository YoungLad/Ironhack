class BooksController < ApplicationController
	def index

		@books_array = Book.all

		render 'index'
	end

	def new
		render 'new'
	end

	def create 
		@the_book = Book.new(book_params)

		if the_book.save
			redirect_to(root_path)
		else
		render 'new'

		private

		def book_params
			params.require(:book).permit(:title, :author, :year, :description, :genre, :rating)
		end
end
