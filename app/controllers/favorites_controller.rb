class FavoritesController < ApplicationController
	def create
		@book_post = Book.find(params[:book_id])
		@book = Book.find(params[:book_id])
		favorite = current_user.favorites.new(book_id: @book.id)
		favorite.save
	end
	
    def destroy
    	@book_post = Book.find(params[:book_id])
    	@book = Book.find(params[:book_id])
        favorite = current_user.favorites.find_by(book_id: @book.id)
        favorite.destroy
    end
end