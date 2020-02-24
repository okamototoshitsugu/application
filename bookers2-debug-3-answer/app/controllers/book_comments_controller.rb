class BookCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @book = Book.find(params[:book_id])
    @book_new = Book.new
    @book_comment = @book.book_comments.new(book_comment_params)
    @book_comment.user_id = current_user.id
    if @book_comment.save
      flash[:success] = "Comment was successfully created."
      redirect_to book_path(@book)
    else
      @book_comments = BookComment.where(book_id: @book.id)
      render '/books/show'
    end
  end

  def destroy
    @book_comment = BookComment.find(params[:book_id])
    if @book_comment.user != current_user
      redirect_to request.referer
    end
    @book_comment.destroy
    redirect_to request.referer
    
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end
