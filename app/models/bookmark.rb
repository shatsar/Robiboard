class Bookmark < ActiveRecord::Base
  attr_accessible :description, :image_url, :title, :category_id
  has_attached_file :snapshot, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  belongs_to :category
end
