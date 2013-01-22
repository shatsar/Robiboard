class SearchController < ApplicationController
  def index
     query = params[:query]
	 @categories = Category.find(:all, :conditions => ["title LIKE :query", {:query => query}])
  end
end
