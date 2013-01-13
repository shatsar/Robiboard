class RemoveImageUrlFromBookmarks < ActiveRecord::Migration
  def up
    remove_column :bookmarks, :image_url
  end

  def down
    add_column :bookmarks, :image_url, :string
  end
end
