class Bookmark < ActiveRecord::Base
  attr_accessible :description, :url, :title, :category_id, :snapshot
  
  has_attached_file :snapshot, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/missing.png"
  
  default_scope order('created_at DESC')
  self.per_page = 10
  
  belongs_to :category

  def load_snapshot(url)
    self.snapshot = open(url)
  end
end
