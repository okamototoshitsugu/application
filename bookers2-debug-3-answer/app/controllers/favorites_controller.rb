class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    favorite = @book.favorites.new(user_id: current_user.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: @book.id)
    favorite.destroy
    redirect_to request.referer
  end

  private
  def redirect
    case params[:redirect_id].to_i
    when 0
      redirect_to books_path
    when 1
      redirect_to book_path(@book)
    end
  end
end
