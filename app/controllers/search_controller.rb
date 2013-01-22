class SearchController < ApplicationController
  def index
     @query = params[:query]
	 @categories = Category.find(:all, :conditions => ["lower(title) LIKE :query", {:query => "%#{@query.downcase}%"}])
	 @bookmarks = Bookmark.find(:all, :conditions => ["lower(description) LIKE :query", {:query => "%#{@query.downcase}%"}])
  end
end
