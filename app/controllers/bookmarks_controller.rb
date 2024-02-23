class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark.list = @bookmark
    if @bookmark.save
      redirect_to bookmark_path(@list)
    else
      # raise
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @list = @bookmark.list
    @bookmark.destroy
    redirect_to list_path(list)
  end

  def show
    @bookmark = Bookmark.find(params[:list_id])
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
