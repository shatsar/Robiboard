class HomepageController < ApplicationController
	def index
    @bookmarks = Bookmark.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookmarks }
    end
  end
end
